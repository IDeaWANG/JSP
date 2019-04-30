package cn.jsp.Exp_04;

import java.util.ArrayList;
import java.util.List;

public class CartDao {
    private List<ProductInCart> ps = new ArrayList<ProductInCart>() ;//声明一个空的Productincart 即购物车里面的实例ps；

    public List<ProductInCart> list() {
        return ps;//输出ps；
    }

    public void add(int id) {
        for (ProductInCart p : ps) {//定义一个p循环ps；
            if (p.getId() == id) {//如果传来的id和购物车里面的ps一样，那么将数量加一即可；
                p.setCount(p.getCount() + 1);//将购物车的物品数量加一；
                return;
            }
        }//如果传来的id和购物车里面的不一样，那么在商品列表里面find商品的信息，添加到购物车；

        ProductInCart p = new ProductInCart();
        Product _p = ProductDao.find(id);//在商品列表里找到该id的商品；
        p.setId(_p.getId());
        p.setName(_p.getName());
        p.setPrices(_p.getPrices());
        p.setCount(1);
        ps.add(p);
    }


    public void delete(int id){
        for (ProductInCart p:ps){
            if (p.getId()==id&&p.getCount()>1){
                p.setCount(p.getCount()-1);
                return;
            }
             if (p.getId()==id&&p.getCount()==1){
                ps.remove(p);
                return;
            }

        }
    }
    public void clear(){
        ps.clear();
    }


}
