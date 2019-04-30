package cn.jsp.Exp_04;

import java.util.ArrayList;
import java.util.List;

public class ProductDao {//ProductDao类对商品进行操作
    private static List<Product> products;

    private static String[] names = {"🍎", "🍌", "🍓", "🍍", "🍊"};//对商品信息进行初始化，硬编码。
    private static Float[] prices = {5.2F, 4.5F, 10.0F, 8.0F, 6.0F};//对商品的价格初始化，也是硬编码；

    static {
        products = new ArrayList<Product>();
        for (int i = 0; i < names.length; i++) {//循环输出商品的信息；
            Product p = new Product();
            p.setId(i + 1);
            p.setName(names[i]);
            p.setPrices(prices[i]);
            products.add(p);
        }
    }

    public List<Product> getAll() {//获取商品的信息的getAll方法；
        return products;


    }


    public static Product find(int id) {
        for (Product p : products) {
            if (id == p.getId()) {
                return p;
            }

        }
        return null;
    }
}