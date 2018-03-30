User.create!([
                 {username: "sid", password: "123456", access_token: "fc05a4758b5ad958f0a3bf55e470dbea", latitude: 28.65, longitude: 72.678, email: "sbajaj1997@gmail.com"},
                 {username: "vidit", password: "123456", access_token: "6bc9b77452f899cf0c02ad47534b1d79", latitude: 28.34, longitude: 72.96, email: nil}
             ])


Market.create!([
                   {name: "PULICAT", latitude: 28.67, longitude: 72.36, user_id: User.first.id},
                   {name: "PONNERI", latitude: 28.987, longitude: 72.456, user_id: User.first.id},
                   {name: "PULICAT POMEGRANATE", latitude: 28.678, longitude: 72.346, user_id: User.first.id},
                   {name: "PULICAT ARAGIRAI", latitude: 28.89, longitude: 72.789, user_id: User.second.id}
               ])


Quotation.create!([
                      {state: nil, town: nil, quotation_number: nil, month: "April", market_id: Market.first.id},
                      {state: nil, town: nil, quotation_number: nil, month: "April", market_id: Market.second.id},
                      {state: nil, town: nil, quotation_number: nil, month: "April", market_id: Market.third.id},
                      {state: nil, town: nil, quotation_number: nil, month: "April", market_id: Market.fourth.id}
                  ])



Shop.create!([
                 {latitude: 28.0, longitude: 72.0, name: "shop1", market_id: Market.first.id, schedule_day: 1},
                 {latitude: 28.0, longitude: 72.0, name: "shop2", market_id: Market.second.id, schedule_day: 2},
                 {latitude: 28.0, longitude: 72.0, name: "shop3", market_id: Market.third.id, schedule_day: 3},
                 {latitude: 28.0, longitude: 72.0, name: "shop4", market_id: Market.fourth.id, schedule_day: 4},
                 {latitude: nil, longitude: nil, name: "shop5", market_id: Market.first.id, schedule_day: 1},
                 {latitude: nil, longitude: nil, name: "shop6", market_id: Market.first.id, schedule_day: 1},
                 {latitude: nil, longitude: nil, name: "shop7", market_id: Market.first.id, schedule_day: 1},
                 {latitude: nil, longitude: nil, name: "shop8", market_id: Market.second.id, schedule_day: 2},
                 {latitude: nil, longitude: nil, name: "shop9", market_id: Market.second.id, schedule_day: 2}
             ])




Item.create!([
  {name: "Bread", item_code: "1.1.05.2.1.01.4", category_id: nil, group_id: nil, sub_group_id: nil, section_id: nil, goods_services: nil, weighted_item_id: nil, varierty: nil, market_id: Market.first.id, original_shop_id: Shop.first.id, first_reserve_shop_id: Shop.fifth.id, second_reserve_shop_id: Shop.all[5].id, open_shop_id: nil},
  {name: "Butter", item_code: "1.1.05.2.1.01.5", category_id: nil, group_id: nil, sub_group_id: nil, section_id: nil, goods_services: nil, weighted_item_id: nil, varierty: nil, market_id: Market.second.id, original_shop_id: Shop.second.id, first_reserve_shop_id: Shop.all[7].id, second_reserve_shop_id: Shop.all[8].id, open_shop_id: nil},
  {name: "Rice", item_code: "1.1.05.2.1.01.7", category_id: nil, group_id: nil, sub_group_id: nil, section_id: nil, goods_services: nil, weighted_item_id: nil, varierty: nil, market_id: Market.third.id, original_shop_id: Shop.third.id, first_reserve_shop_id: nil, second_reserve_shop_id: nil, open_shop_id: nil},
  {name: "Wheat", item_code: "1.1.08.2.1.01.9", category_id: nil, group_id: nil, sub_group_id: nil, section_id: nil, goods_services: nil, weighted_item_id: nil, varierty: nil, market_id: Market.fourth.id, original_shop_id: Shop.fourth.id, first_reserve_shop_id: nil, second_reserve_shop_id: nil, open_shop_id: nil},
  {name: "Tea", item_code: "1.1.05.2.1.02.0", category_id: nil, group_id: nil, sub_group_id: nil, section_id: nil, goods_services: nil, weighted_item_id: nil, varierty: nil, market_id: Market.first.id, original_shop_id: Shop.first.id, first_reserve_shop_id: Shop.all[5].id, second_reserve_shop_id: Shop.all[6].id, open_shop_id: nil},
  {name: "Coffee", item_code: "1.1.06.2.1.01.0", category_id: nil, group_id: nil, sub_group_id: nil, section_id: nil, goods_services: nil, weighted_item_id: nil, varierty: nil, market_id: Market.first.id, original_shop_id: Shop.first.id, first_reserve_shop_id: Shop.all[5].id, second_reserve_shop_id: Shop.all[5].id, open_shop_id: nil},
  {name: "Egg", item_code: "1.1.05.2.1.01.0", category_id: nil, group_id: nil, sub_group_id: nil, section_id: nil, goods_services: nil, weighted_item_id: nil, varierty: nil, market_id: Market.first.id, original_shop_id: Shop.fifth.id, first_reserve_shop_id: Shop.all[0].id, second_reserve_shop_id: Shop.all[6].id, open_shop_id: nil},
  {name: "Fish(Dry)", item_code: "1.1.09.2.1.01.0", category_id: nil, group_id: nil, sub_group_id: nil, section_id: nil, goods_services: nil, weighted_item_id: nil, varierty: nil, market_id: Market.first.id, original_shop_id: Shop.fifth.id, first_reserve_shop_id: Shop.all[0].id, second_reserve_shop_id: Shop.all[5].id, open_shop_id: nil},
  {name: "Maida", item_code: "1.1.05.2.1.01.0", category_id: nil, group_id: nil, sub_group_id: nil, section_id: nil, goods_services: nil, weighted_item_id: nil, varierty: nil, market_id: Market.first.id, original_shop_id: Shop.all[5].id, first_reserve_shop_id: Shop.all[4].id, second_reserve_shop_id: Shop.all[6].id, open_shop_id: nil},
  {name: "Biscuits", item_code: "1.2.05.2.1.01.0", category_id: nil, group_id: nil, sub_group_id: nil, section_id: nil, goods_services: nil, weighted_item_id: nil, varierty: nil, market_id: Market.first.id, original_shop_id: Shop.all[5].id, first_reserve_shop_id: Shop.all[0].id, second_reserve_shop_id: Shop.all[6].id, open_shop_id: nil},
  {name: "Suji", item_code: "1.7.05.2.1.01.0", category_id: nil, group_id: nil, sub_group_id: nil, section_id: nil, goods_services: nil, weighted_item_id: nil, varierty: nil, market_id: Market.first.id, original_shop_id: Shop.all[6].id, first_reserve_shop_id: Shop.all[4].id, second_reserve_shop_id: Shop.all[5].id, open_shop_id: nil},
  {name: "Mango", item_code: "1.1.05.2.1.01.0", category_id: nil, group_id: nil, sub_group_id: nil, section_id: nil, goods_services: nil, weighted_item_id: nil, varierty: nil, market_id: Market.first.id, original_shop_id: Shop.all[6].id, first_reserve_shop_id: Shop.all[0].id, second_reserve_shop_id: Shop.all[4].id, open_shop_id: nil},
  {name: "milk", item_code: "1.2.05.2.1.01.6", category_id: nil, group_id: nil, sub_group_id: nil, section_id: nil, goods_services: nil, weighted_item_id: nil, varierty: nil, market_id: Market.second.id, original_shop_id: Shop.all[7].id, first_reserve_shop_id: Shop.all[1].id, second_reserve_shop_id: Shop.all[8].id, open_shop_id: nil},
  {name: "ghee", item_code: "1.1.05.2.1.01.0", category_id: nil, group_id: nil, sub_group_id: nil, section_id: nil, goods_services: nil, weighted_item_id: nil, varierty: nil, market_id: Market.second.id, original_shop_id: Shop.all[7].id, first_reserve_shop_id: Shop.all[1].id, second_reserve_shop_id: Shop.all[8].id, open_shop_id: nil},
  {name: "sugar", item_code: "1.2.05.2.1.01.3", category_id: nil, group_id: nil, sub_group_id: nil, section_id: nil, goods_services: nil, weighted_item_id: nil, varierty: nil, market_id: Market.second.id, original_shop_id: Shop.all[8].id, first_reserve_shop_id: Shop.all[1].id, second_reserve_shop_id: Shop.all[7].id, open_shop_id: nil},
  {name: "black peppar", item_code: "1.1.05.2.1.01.0", category_id: nil, group_id: nil, sub_group_id: nil, section_id: nil, goods_services: nil, weighted_item_id: nil, varierty: nil, market_id: Market.second.id, original_shop_id: Shop.all[8].id, first_reserve_shop_id: Shop.all[1].id, second_reserve_shop_id: Shop.all[7].id, open_shop_id: nil}
])


QuotationItem.create!([
  {item_id: Item.all[0].id, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: 0, remarks: nil, current_price: nil, user_id: 1, price: 23.5, quotation_id: Quotation.all[0].id,quantity:500,unit:'gm'},
  {item_id: Item.all[1].id, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: 0, remarks: nil, current_price: nil, user_id: nil, price: nil, quotation_id: Quotation.all[1].id,quantity:500,unit:'gm'},
  {item_id: Item.all[2].id, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: 0, remarks: nil, current_price: nil, user_id: nil, price: nil, quotation_id: Quotation.all[2].id,quantity:1,unit:'KG'},
  {item_id: Item.all[3].id, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: 0, remarks: nil, current_price: nil, user_id: nil, price: nil, quotation_id: Quotation.all[3].id,quantity:1,unit:'KG'},
  {item_id: Item.all[4].id, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: nil, remarks: nil, current_price: nil, user_id: nil, price: nil, quotation_id: Quotation.all[0].id,quantity:500,unit:'gm'},
  {item_id: Item.all[5].id, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: nil, remarks: nil, current_price: nil, user_id: nil, price: nil, quotation_id: Quotation.all[0].id,quantity:500,unit:'gm'},
  {item_id: Item.all[6].id, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: nil, remarks: nil, current_price: nil, user_id: nil, price: nil, quotation_id: Quotation.all[0].id,quantity:500,unit:'gm'},
  {item_id: Item.all[7].id, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: nil, remarks: nil, current_price: nil, user_id: nil, price: nil, quotation_id: Quotation.all[0].id,quantity:1,unit:'No'},
  {item_id: Item.all[8].id, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: nil, remarks: nil, current_price: nil, user_id: nil, price: nil, quotation_id: Quotation.all[0].id,quantity:1,unit:'No'},
  {item_id: Item.all[9].id, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: nil, remarks: nil, current_price: nil, user_id: nil, price: nil, quotation_id: Quotation.all[0].id,quantity:1,unit:'Kg'},
  {item_id: Item.all[10].id, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: nil, remarks: nil, current_price: nil, user_id: nil, price: nil, quotation_id: Quotation.all[0].id,quantity:1,unit:'No'},
  {item_id: Item.all[11].id, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: nil, remarks: nil, current_price: nil, user_id: nil, price: nil, quotation_id: Quotation.all[0].id,quantity:1,unit:'kg'},
  {item_id: Item.all[12].id, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: nil, remarks: nil, current_price: nil, user_id: nil, price: nil, quotation_id: Quotation.all[1].id,quantity:1,unit:'lt'},
  {item_id: Item.all[13].id, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: nil, remarks: nil, current_price: nil, user_id: nil, price: nil, quotation_id: Quotation.all[1].id,quantity:500,unit:'gm'},
  {item_id: Item.all[14].id, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: nil, remarks: nil, current_price: nil, user_id: nil, price: nil, quotation_id: Quotation.all[1].id,quantity:1,unit:'kg'},
  {item_id: Item.all[15].id, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: nil, remarks: nil, current_price: nil, user_id: nil, price: nil, quotation_id: Quotation.all[1].id,quantity:500,unit:'gm'}
])

Quotation.create!([
                      {state: nil, town: nil, quotation_number: nil, month: "March", market_id: Market.first.id},
                      {state: nil, town: nil, quotation_number: nil, month: "March", market_id: Market.second.id},
                      {state: nil, town: nil, quotation_number: nil, month: "March", market_id: Market.third.id},
                      {state: nil, town: nil, quotation_number: nil, month: "March", market_id: Market.fourth.id}
                  ])

QuotationItem.create!([
                          {item_id: Item.all[0].id, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: 0, remarks: nil, current_price: nil, user_id: 1, price: 23.5, quotation_id: Quotation.all[4].id,quantity:500,unit:'gm'},
                          {item_id: Item.all[1].id, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: 0, remarks: nil, current_price: nil, user_id: nil, price: 20, quotation_id: Quotation.all[5].id,quantity:500,unit:'gm'},
                          {item_id: Item.all[2].id, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: 0, remarks: nil, current_price: nil, user_id: nil, price: 34.5, quotation_id: Quotation.all[6].id,quantity:1,unit:'KG'},
                          {item_id: Item.all[3].id, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: 0, remarks: nil, current_price: nil, user_id: nil, price: 12.34, quotation_id: Quotation.all[7].id,quantity:1,unit:'KG'},
                          {item_id: Item.all[4].id, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: nil, remarks: nil, current_price: nil, user_id: nil, price: 35.5, quotation_id: Quotation.all[4].id,quantity:500,unit:'gm'},
                          {item_id: Item.all[5].id, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: nil, remarks: nil, current_price: nil, user_id: nil, price: 90, quotation_id: Quotation.all[4].id,quantity:500,unit:'gm'},
                          {item_id: Item.all[6].id, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: nil, remarks: nil, current_price: nil, user_id: nil, price: 23.5, quotation_id: Quotation.all[4].id,quantity:500,unit:'gm'},
                          {item_id: Item.all[7].id, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: nil, remarks: nil, current_price: nil, user_id: nil, price: 123, quotation_id: Quotation.all[4].id,quantity:1,unit:'No'},
                          {item_id: Item.all[8].id, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: nil, remarks: nil, current_price: nil, user_id: nil, price: 21.5, quotation_id: Quotation.all[4].id,quantity:1,unit:'No'},
                          {item_id: Item.all[9].id, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: nil, remarks: nil, current_price: nil, user_id: nil, price: 97, quotation_id: Quotation.all[4].id,quantity:1,unit:'Kg'},
                          {item_id: Item.all[10].id, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: nil, remarks: nil, current_price: nil, user_id: nil, price: 45.2, quotation_id: Quotation.all[4].id,quantity:1,unit:'No'},
                          {item_id: Item.all[11].id, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: nil, remarks: nil, current_price: nil, user_id: nil, price: 12.5, quotation_id: Quotation.all[4].id,quantity:1,unit:'kg'},
                          {item_id: Item.all[12].id, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: nil, remarks: nil, current_price: nil, user_id: nil, price: 20, quotation_id: Quotation.all[5].id,quantity:1,unit:'lt'},
                          {item_id: Item.all[13].id, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: nil, remarks: nil, current_price: nil, user_id: nil, price: 45, quotation_id: Quotation.all[5].id,quantity:500,unit:'gm'},
                          {item_id: Item.all[14].id, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: nil, remarks: nil, current_price: nil, user_id: nil, price: 29, quotation_id: Quotation.all[5].id,quantity:1,unit:'kg'},
                          {item_id: Item.all[15].id, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: nil, remarks: nil, current_price: nil, user_id: nil, price: 65, quotation_id: Quotation.all[5].id,quantity:500,unit:'gm'}
                      ])



