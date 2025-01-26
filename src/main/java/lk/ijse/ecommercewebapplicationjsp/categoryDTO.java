package lk.ijse.ecommercewebapplicationjsp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class categoryDTO {
    private String categoryId;
    private String name;
    private String description;
}
