/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hirepurchase.web.CodeSystem;

import com.hirepurchase.model.CardType;
import com.hirepurchase.model.CardTypePK;
import com.hirepurchase.service.CardTypeService;
import com.hirepurchase.service.IdGeneratorService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author FUJITSU
 */
@Controller
@RequestMapping("/cardtype")
public class CardTypeController {
    @Autowired
    CardTypeService cardTypeService;
    
    @Autowired
    IdGeneratorService idgeneratorService;
    
    private final String CARDTYPE_PAGE = "master/CodeSystem/CardType";
    private final String SEARCH_PAGE = "master/SearchScreen/SearchCard";
    
    private CardType cardTypeModel;
    private List<CardType> listCardType;
    /**
     *
     * @param model
     * @param flagSearch
     * @param cardTypeId
     * @param cardType
     * @return
     */
    @RequestMapping(method = RequestMethod.GET)
    public String displayCardType(ModelMap model,
            @RequestParam(value="search",required = false) String flagSearch,
            @RequestParam(value="cardTypeId",required = false) String cardTypeId,
            @ModelAttribute("card") CardType cardType) {     
        System.out.println("IN CardTypeController GET");
        if(flagSearch!= null && flagSearch.equals("0")){
            CardType card = getIndex();            
            CardTypePK pk = new CardTypePK();
            pk.setCardtypeid(card.getCardTypePK().getCardtypeid());
            
            cardTypeModel = new CardType();
            cardTypeModel.setCardTypePK(pk);
            cardTypeModel.setCardtypename(card.getCardtypename());

            model.addAttribute("card", card);
            model.addAttribute("titleName", "บันทึกรหัสประเภทบัตร");            
            return CARDTYPE_PAGE;
        }else if(flagSearch!= null && flagSearch.equals("1")){            
            listCardType = cardTypeService.selectCardType(cardType);
            model.addAttribute("cardList", listCardType);
            return SEARCH_PAGE;
        }else{            
            CardType card = cardTypeService.selectCardTypeById(cardTypeId);
            cardTypeModel.setCardTypePK(card.getCardTypePK());
            cardTypeModel.setCardtypename(card.getCardtypename());
            model.addAttribute("card", card);
            return CARDTYPE_PAGE;
        }         
    }
    
    @RequestMapping(method = RequestMethod.POST, params = "close")
    public String backToCardType(ModelMap model,   
            @ModelAttribute("card") CardType cardType) {     
        System.out.println("IN CardTypeController POST params = close");
        CardType card = getIndex();            
        CardTypePK pk = new CardTypePK();
        pk.setCardtypeid(card.getCardTypePK().getCardtypeid());

        cardTypeModel = new CardType();
        cardTypeModel.setCardTypePK(pk);
        cardTypeModel.setCardtypename(card.getCardtypename());

        model.addAttribute("card", card);
        model.addAttribute("titleName", "บันทึกรหัสประเภทบัตร");            
        return CARDTYPE_PAGE;        
    }
    
    @RequestMapping(method = RequestMethod.POST, params = "save" )
    public String saveCardType(ModelMap model,
            @ModelAttribute("card") CardType cardType) {     
        System.out.println("IN CardTypeController Save");
        if(cardType!=null){
            if(cardType.getCardtypename().isEmpty()){
                model.addAttribute("errorMsg", "กรุณาบันทึกรายละเอียด");                
                cardType.setCardTypePK(cardTypeModel.getCardTypePK());
                cardType.setCardtypename(cardTypeModel.getCardtypename());
            }else{
                cardTypeModel.setCardtypename(cardType.getCardtypename());
                boolean success = cardTypeService.add("C",cardTypeModel);
                if(success){                    

                    CardType card = getIndex();
                    cardTypeModel = new CardType();
                    cardTypeModel.setCardTypePK(card.getCardTypePK());
                    cardTypeModel.setCardtypename(card.getCardtypename());
                }
            }
        }
        model.addAttribute("card", cardTypeModel);
        model.addAttribute("titleName", "บันทึกรหัสประเภทบัตร");
	return CARDTYPE_PAGE;
    }
    
    @RequestMapping(method = RequestMethod.POST, params = "delete" )
    public String deleteCardType(ModelMap model,
            @ModelAttribute("card") CardType cardType) {     
        System.out.println("IN CardTypeController Delete");
        if(cardType!=null){
            boolean success = cardTypeService.delete(cardTypeModel);
            if(success){                    

                CardType card = getIndex();
                cardTypeModel = new CardType();
                cardTypeModel.setCardTypePK(card.getCardTypePK());
                cardTypeModel.setCardtypename(card.getCardtypename());
            }
        }
        model.addAttribute("card", cardTypeModel);
        model.addAttribute("titleName", "บันทึกรหัสประเภทบัตร");        
	return CARDTYPE_PAGE;
    }
    
    @RequestMapping(method = RequestMethod.POST)
    public String searchCardType(ModelMap model,
            @RequestParam(value="cardtypeid",required = false) String cardTypeId,
            @RequestParam(value="cardtypename",required = false) String cardTypeName,
            @ModelAttribute("card") CardType cardType) {     
        System.out.println("IN CardTypeController search");
        if(cardType!=null){
            CardTypePK pk = new CardTypePK();
            pk.setCardtypeid(cardTypeId);
            cardType.setCardTypePK(pk);
            cardType.setCardtypename(cardTypeName);
            listCardType = cardTypeService.selectCardType(cardType);
        }
        model.addAttribute("card", cardType);
        model.addAttribute("cardList", listCardType);
	return SEARCH_PAGE;
    }
    
    private CardType getIndex(){
        String cardTypeId = idgeneratorService.getNextIndex("C",2);
        CardTypePK pk = new CardTypePK();
        pk.setCardtypeid(cardTypeId);
            
        CardType card = new CardType();
        card.setCardTypePK(pk);
        card.setCardtypename("");
        return card;
    }
}
