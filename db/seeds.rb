Item.create!([
  {name: "Bread", item_code: "000", category_id: nil, group_id: nil, sub_group_id: nil, section_id: nil, goods_services: nil, weighted_item_id: nil, varierty: nil, market_id: 1, original_shop_id: 1, first_reserve_shop_id: nil, second_reserve_shop_id: nil, open_shop_id: nil},
  {name: "Butter", item_code: "111", category_id: nil, group_id: nil, sub_group_id: nil, section_id: nil, goods_services: nil, weighted_item_id: nil, varierty: nil, market_id: 2, original_shop_id: 2, first_reserve_shop_id: nil, second_reserve_shop_id: nil, open_shop_id: nil},
  {name: "Rice", item_code: "222", category_id: nil, group_id: nil, sub_group_id: nil, section_id: nil, goods_services: nil, weighted_item_id: nil, varierty: nil, market_id: 3, original_shop_id: 3, first_reserve_shop_id: nil, second_reserve_shop_id: nil, open_shop_id: nil},
  {name: "Wheat", item_code: "333", category_id: nil, group_id: nil, sub_group_id: nil, section_id: nil, goods_services: nil, weighted_item_id: nil, varierty: nil, market_id: 4, original_shop_id: 4, first_reserve_shop_id: nil, second_reserve_shop_id: nil, open_shop_id: nil},
  {name: "Tea", item_code: "555", category_id: nil, group_id: nil, sub_group_id: nil, section_id: nil, goods_services: nil, weighted_item_id: nil, varierty: nil, market_id: 1, original_shop_id: 1, first_reserve_shop_id: nil, second_reserve_shop_id: nil, open_shop_id: nil},
  {name: "Coffee", item_code: "666", category_id: nil, group_id: nil, sub_group_id: nil, section_id: nil, goods_services: nil, weighted_item_id: nil, varierty: nil, market_id: 1, original_shop_id: 1, first_reserve_shop_id: nil, second_reserve_shop_id: nil, open_shop_id: nil},
  {name: "Egg", item_code: "777", category_id: nil, group_id: nil, sub_group_id: nil, section_id: nil, goods_services: nil, weighted_item_id: nil, varierty: nil, market_id: 1, original_shop_id: 5, first_reserve_shop_id: nil, second_reserve_shop_id: nil, open_shop_id: nil},
  {name: "Fish", item_code: "888", category_id: nil, group_id: nil, sub_group_id: nil, section_id: nil, goods_services: nil, weighted_item_id: nil, varierty: nil, market_id: 1, original_shop_id: 5, first_reserve_shop_id: nil, second_reserve_shop_id: nil, open_shop_id: nil},
  {name: "Basmati rice", item_code: "999", category_id: nil, group_id: nil, sub_group_id: nil, section_id: nil, goods_services: nil, weighted_item_id: nil, varierty: nil, market_id: 1, original_shop_id: 6, first_reserve_shop_id: nil, second_reserve_shop_id: nil, open_shop_id: nil},
  {name: "Daawat rice", item_code: "123", category_id: nil, group_id: nil, sub_group_id: nil, section_id: nil, goods_services: nil, weighted_item_id: nil, varierty: nil, market_id: 1, original_shop_id: 6, first_reserve_shop_id: nil, second_reserve_shop_id: nil, open_shop_id: nil},
  {name: "Nescafe coffee", item_code: "123", category_id: nil, group_id: nil, sub_group_id: nil, section_id: nil, goods_services: nil, weighted_item_id: nil, varierty: nil, market_id: 1, original_shop_id: 7, first_reserve_shop_id: nil, second_reserve_shop_id: nil, open_shop_id: nil},
  {name: "Bru coffee", item_code: "124", category_id: nil, group_id: nil, sub_group_id: nil, section_id: nil, goods_services: nil, weighted_item_id: nil, varierty: nil, market_id: 1, original_shop_id: 7, first_reserve_shop_id: nil, second_reserve_shop_id: nil, open_shop_id: nil},
  {name: "Nescafe coffee", item_code: "123", category_id: nil, group_id: nil, sub_group_id: nil, section_id: nil, goods_services: nil, weighted_item_id: nil, varierty: nil, market_id: 2, original_shop_id: 8, first_reserve_shop_id: nil, second_reserve_shop_id: nil, open_shop_id: nil},
  {name: "Bru coffee", item_code: "124", category_id: nil, group_id: nil, sub_group_id: nil, section_id: nil, goods_services: nil, weighted_item_id: nil, varierty: nil, market_id: 2, original_shop_id: 8, first_reserve_shop_id: nil, second_reserve_shop_id: nil, open_shop_id: nil},
  {name: "Basmati rice", item_code: "999", category_id: nil, group_id: nil, sub_group_id: nil, section_id: nil, goods_services: nil, weighted_item_id: nil, varierty: nil, market_id: 2, original_shop_id: 9, first_reserve_shop_id: nil, second_reserve_shop_id: nil, open_shop_id: nil},
  {name: "Daawat rice", item_code: "123", category_id: nil, group_id: nil, sub_group_id: nil, section_id: nil, goods_services: nil, weighted_item_id: nil, varierty: nil, market_id: 2, original_shop_id: 9, first_reserve_shop_id: nil, second_reserve_shop_id: nil, open_shop_id: nil}
])
Market.create!([
  {name: "market1", latitude: 28.67, longitude: 72.36, user_id: 1},
  {name: "market2", latitude: 28.987, longitude: 72.456, user_id: 1},
  {name: "market3", latitude: 28.678, longitude: 72.346, user_id: 2},
  {name: "market4", latitude: 28.89, longitude: 72.789, user_id: 2}
])
Quotation.create!([
  {state: nil, town: nil, quotation_number: nil, month: "April", market_id: 1},
  {state: nil, town: nil, quotation_number: nil, month: "April", market_id: 2},
  {state: nil, town: nil, quotation_number: nil, month: "April", market_id: 3},
  {state: nil, town: nil, quotation_number: nil, month: "April", market_id: 4}
])
QuotationItem.create!([
  {item_id: 1, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: 0, remarks: nil, current_price: nil, user_id: 1, price: 23.5, quotation_id: 1},
  {item_id: 2, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: 0, remarks: nil, current_price: nil, user_id: nil, price: nil, quotation_id: 2},
  {item_id: 3, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: 0, remarks: nil, current_price: nil, user_id: nil, price: nil, quotation_id: 3},
  {item_id: 4, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: 0, remarks: nil, current_price: nil, user_id: nil, price: nil, quotation_id: 4},
  {item_id: 5, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: nil, remarks: nil, current_price: nil, user_id: nil, price: nil, quotation_id: 1},
  {item_id: 6, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: nil, remarks: nil, current_price: nil, user_id: nil, price: nil, quotation_id: 1},
  {item_id: 7, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: nil, remarks: nil, current_price: nil, user_id: nil, price: nil, quotation_id: 1},
  {item_id: 8, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: nil, remarks: nil, current_price: nil, user_id: nil, price: nil, quotation_id: 1},
  {item_id: 9, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: nil, remarks: nil, current_price: nil, user_id: nil, price: nil, quotation_id: 1},
  {item_id: 10, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: nil, remarks: nil, current_price: nil, user_id: nil, price: nil, quotation_id: 1},
  {item_id: 11, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: nil, remarks: nil, current_price: nil, user_id: nil, price: nil, quotation_id: 1},
  {item_id: 12, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: nil, remarks: nil, current_price: nil, user_id: nil, price: nil, quotation_id: 1},
  {item_id: 13, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: nil, remarks: nil, current_price: nil, user_id: nil, price: nil, quotation_id: 2},
  {item_id: 14, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: nil, remarks: nil, current_price: nil, user_id: nil, price: nil, quotation_id: 2},
  {item_id: 15, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: nil, remarks: nil, current_price: nil, user_id: nil, price: nil, quotation_id: 2},
  {item_id: 16, shop_id: nil, scheduled_time: nil, specification_id: nil, special_code: nil, shop_code: nil, remarks: nil, current_price: nil, user_id: nil, price: nil, quotation_id: 2}
])
Shop.create!([
  {latitude: 28.0, longitude: 72.0, name: "shop1", market_id: 1, schedule_day: 1},
  {latitude: 28.0, longitude: 72.0, name: "shop2", market_id: 2, schedule_day: 2},
  {latitude: 28.0, longitude: 72.0, name: "shop3", market_id: 3, schedule_day: 3},
  {latitude: 28.0, longitude: 72.0, name: "shop4", market_id: 4, schedule_day: 4},
  {latitude: nil, longitude: nil, name: "shop5", market_id: 1, schedule_day: 1},
  {latitude: nil, longitude: nil, name: "shop6", market_id: 1, schedule_day: 1},
  {latitude: nil, longitude: nil, name: "shop7", market_id: 1, schedule_day: 1},
  {latitude: nil, longitude: nil, name: "shop8", market_id: 2, schedule_day: 2},
  {latitude: nil, longitude: nil, name: "shop9", market_id: 2, schedule_day: 2}
])
User.create!([
  {username: "sid", password: "123456", access_token: "fc05a4758b5ad958f0a3bf55e470dbea", latitude: 28.65, longitude: 72.678, email: "sbajaj1997@gmail.com"},
  {username: "vidit", password: "123456", access_token: "6bc9b77452f899cf0c02ad47534b1d79", latitude: 28.34, longitude: 72.96, email: nil}
])
