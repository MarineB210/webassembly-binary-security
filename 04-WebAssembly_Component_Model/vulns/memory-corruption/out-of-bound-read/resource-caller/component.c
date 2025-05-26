#include "use_resource.h"

void exports_resources_creator_operate_buffer_modify_buffer(void){
    resources_creator_create_resource_own_buffer_t buffer1 = resources_creator_create_resource_constructor_buffer();
    resources_creator_create_resource_borrow_buffer_t borrow1 = resources_creator_create_resource_borrow_buffer(buffer1);

    uint8_t secret[16] = { 'S','E','C','R','E','T','_','D','A','T','A','_','1','2','3','4' };
    use_resource_list_u8_t secret_payload = {
    .ptr = secret,
    .len = 16
    };
    resources_creator_create_resource_method_buffer_write(borrow1, &secret_payload);

    //resources_creator_create_resource_buffer_drop_own(buffer1);  // I do not even need to drop it

    resources_creator_create_resource_own_buffer_t owned = resources_creator_create_resource_constructor_buffer();

    resources_creator_create_resource_borrow_buffer_t borrowed = resources_creator_create_resource_borrow_buffer(owned);

    uint8_t real_data[6] = { 'H', 'A', 'C', 'K', 'E', 'D'};

    use_resource_list_u8_t payload = {
        .ptr = real_data,
        .len = 64
    };

    resources_creator_create_resource_method_buffer_write(borrowed, &payload);

}