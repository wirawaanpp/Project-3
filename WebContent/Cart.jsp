<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Latihan AddCart | TutorialPedia.NET</title>
    </head>
    <body>
        <%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
        <h1>Keranjang</h1>

        <table width="75%" border="1">
            <tr>
                <td>Kode Produk</td>
                <td>Nama Produk</td>               
                <td>Quantity</td>
                <td>Harga</td>
                <td>Total</td>                
            </tr>
            <jsp:useBean id="cart" scope="session" class="net.cart.CartBean" />
            <c:if test="${cart.lineItemCount==0}">
                <tr>
                    <td colspan="4"><font size="2" face="Verdana, Arial, Helvetica, sans-serif">- Cart is currently empty -<br/>
                </tr>
            </c:if>
            <c:forEach var="cartItem" items="${cart.cartItems}" varStatus="counter">
                <form name="item" method="POST" action="CartController">
                    <tr>
                        <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><b><c:out value="${cartItem.kd_produk}"/></b><br/></td>
                        <td>  <c:out value="${cartItem.nm_produk}"/></font></td>
                        <td>
                            <input type='hidden' name='itemIndex' value='<c:out value="${counter.count}"/>'>
                            <input type='text' name="qty" value='<c:out value="${cartItem.qty}"/>' size='2'> 
                            <input type="submit" name="action" value="Update">
                            <input type="submit" name="action" value="Delete">
                        </td>
                        <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Rp. <c:out value="${cartItem.harga}"/></font></td>
                        <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Rp. <c:out value="${cartItem.totalHarga}"/></font></td>
                    </tr>
                </form>
            </c:forEach>
            <tr>
                <td colspan="2"> </td>
                <td> </td>
                <td></td>
                <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Subtotal: Rp. <c:out value="${cart.orderTotal}"/></font></td>
            </tr>
        </table>
            <p><a href="index.jsp" >Continue Shopping</a> </p>
            <p><a href="#" >Checkout</a></p>
    </body>
</html>