package net.cart;

/**
 *
 * @author barbarian
 */
import java.util.ArrayList;
 
 
public class CartBean {
 private ArrayList alCartItems = new ArrayList();
 private int dblOrderTotal ;
  
 public int getLineItemCount() {
  return alCartItems.size();
 }
  
 public void deleteCartItem(String strItemIndex) {
  int iItemIndex = 0;
  try {
   iItemIndex = Integer.parseInt(strItemIndex);
   alCartItems.remove(iItemIndex - 1);
   calculateOrderTotal();
  } catch(NumberFormatException nfe) {
   System.out.println("Error while deleting cart item: "+nfe.getMessage());
   nfe.printStackTrace();
  }
 }
  
 public void updateCartItem(String strItemIndex, String strQty) {
  int dblTotalHarga = 0;
  int dblHarga = 0;
  int iQty = 0;
  int iItemIndex = 0;
  CartItemBean cartItem = null;
  try {
   iItemIndex = Integer.parseInt(strItemIndex);
   iQty = Integer.parseInt(strQty);
   if(iQty>0) {
    cartItem = (CartItemBean)alCartItems.get(iItemIndex-1);
    dblHarga = (int) cartItem.getHarga();
    dblTotalHarga= dblHarga*iQty;
    cartItem.setQuantity(iQty);
    cartItem.setTotalHarga(dblTotalHarga);
    calculateOrderTotal();
   }
  } catch (NumberFormatException nfe) {
   System.out.println("Error while updating cart: "+nfe.getMessage());
   nfe.printStackTrace();
  }
   
 }
  
 public void addCartItem(String strKd_produk, String strNm_produk,
String strHarga, String strQty) {
  int dblTotalHarga = 0;
  int dblHarga = 0;
  int iQty = 0;
  CartItemBean cartItem = new CartItemBean();
  try {
   dblHarga = Integer.parseInt(strHarga);
   iQty = Integer.parseInt(strQty);
   if(iQty>0) {
    dblTotalHarga = dblHarga*iQty;
    cartItem.setKd_produk(strKd_produk);
    cartItem.setNm_produk(strNm_produk);
    cartItem.setHarga(dblHarga);
    cartItem.setQuantity(iQty);
    cartItem.setTotalHarga(dblTotalHarga);
    alCartItems.add(cartItem);
    calculateOrderTotal();
   }
    
  } catch (NumberFormatException nfe) {
   System.out.println("Error while parsing from String to primitive types: "+nfe.getMessage());
   nfe.printStackTrace();
  }
 }
  
 public void addCartItem(CartItemBean cartItem) {
  alCartItems.add(cartItem);
 }
  
 public CartItemBean getCartItem(int iItemIndex) {
  CartItemBean cartItem = null;
  if(alCartItems.size()>iItemIndex) {
   cartItem = (CartItemBean) alCartItems.get(iItemIndex);
  }
  return cartItem;
 }
  
 public ArrayList getCartItems() {
  return alCartItems;
 }
 public void setCartItems(ArrayList alCartItems) {
  this.alCartItems = alCartItems;
 }
 public double getOrderTotal() {
  return dblOrderTotal;
 }
 public void setOrderTotal(int dblOrderTotal) {
  this.dblOrderTotal = dblOrderTotal;
 }
  
 protected void calculateOrderTotal() {
  int dblTotal = 0;
  for(int counter=0;counter<alCartItems.size();counter++) {
   CartItemBean cartItem = (CartItemBean) alCartItems.get(counter);
   dblTotal+=cartItem.getTotalHarga();
    
  }
  setOrderTotal(dblTotal);
 }
 
}