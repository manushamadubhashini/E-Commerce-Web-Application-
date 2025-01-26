package lk.ijse.ecommercewebapplicationjsp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.InputStream;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class productDTO {
    private String productId;
    private String productName;
    private String description;
    private double price;
    private int qty;
    private String images;


}
