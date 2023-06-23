# xin9k

<p align="center">
  <img src="https://img.shields.io/github/stars/SinaSys/xin9k">
  <img src="https://img.shields.io/github/forks/SinaSys/xin9k">
  <img src="https://img.shields.io/github/actions/workflow/status/SinaSys/xin9k/main.yml?label=CI&logo=github">
  <img src="https://img.shields.io/github/v/release/SinaSys/xin9k?label=Release&logo=semantic-release">
  <img src="https://img.shields.io/github/last-commit/SinaSys/xin9k?label=Last%20commit">
</p>

Japanese restaurant app is a design implementation of [Japanese restaurant app](https://dribbble.com/shots/14752424-Japan-Restaurant-App-Product-App/attachments/6455673?mode=media) designed by [gandkurniawan](https://dribbble.com/gandkurniawan)

![](https://github.com/SinaSys/xin9k/blob/master/screenshots/japanese_restaurant_app_dark.png?raw=true)
![](https://github.com/SinaSys/xin9k/blob/master/screenshots/japanese_restaurant_app_light.png?raw=true)



  <br/>

## GetX | Cubit | Bloc | Provider 

#### • Access to different versions

|               Version               |                                                  Bloc                                                  |                                                  Cubit                                                   |                                                     Getx                                                      |                                                     Provider                                                      |
|:-----------------------------------:|:------------------------------------------------------------------------------------------------------:|:--------------------------------------------------------------------------------------------------------:|:-------------------------------------------------------------------------------------------------------------:|:-----------------------------------------------------------------------------------------------------------------:|
|               Branch                | [Source](https://github.com/SinaSys/xin9k/tree/bloc) <br/> (bloc branch)️ |                                    [Source](https://github.com/SinaSys/xin9k/tree/cubit)   <br/> (cubit branch)                                     | [Source](https://github.com/SinaSys/xin9k/tree/master)     <br/> (master branch) | [Source](https://github.com/SinaSys/xin9k/tree/provider)     <br/> (provider branch) |

  <br/>

## Screenshots (Light mode)

Preview                    |   Home screen             |  Product Detail Screen    |  Cart Screen
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:
![](https://github.com/SinaSys/xin9k/blob/master/screenshots/preview.gif?raw=true)|![](https://github.com/SinaSys/xin9k/blob/master/screenshots/product_list_screen_light.png?raw=true)|![](https://github.com/SinaSys/xin9k/blob/master/screenshots/product_detail_screen_light.png?raw=true)|![](https://github.com/SinaSys/xin9k/blob/master/screenshots/cart_screen_light.png?raw=true)

## Screenshots (Dark mode)

Favorite screen            |   Home screen             |  Product Detail Screen       |  Cart Screen
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:
![](https://github.com/SinaSys/xin9k/blob/master/screenshots/favorite_screen_dark.png?raw=true)|![](https://github.com/SinaSys/xin9k/blob/master/screenshots/product_list_screen_dark.png?raw=true)|![](https://github.com/SinaSys/xin9k/blob/master/screenshots/product_detail_screen_dark.png?raw=true)|![](https://github.com/SinaSys/xin9k/blob/master/screenshots/cart_screen_dark.png?raw=true)


## 🚀 Features :
```
• Dynamically change between light and dark theme
• Bottom navigation animation when switch from one screen to another
• Fade animation for product items in detail screen and list views
• Delete single product item from cart by swipe item to right side
• Automatically delete single item from cart by set its value to zero
• Increase or Decrease quantity for each product item in cart screen
• Display product list on the product list screen
• Display Detail of each product on product detail screen
• Real-time calculation of total price in the cart screen
• Add desired product to the favorite screen
• Select quantity for each item on detail screen
• Filter products by category
• State management with GetX | Cubit | Bloc | Provider
```

  <br/>

## Dependencies
|       Name      |    Cubit  <br/> version      |       Bloc <br/> version       |      GetX <br/> version     |    provider <br/> version   |
| :-------------: | :--------------------------: | :----------------------------: |  :------------------------: |  :------------------------: | 
| [flutter_bloc](https://pub.dev/packages/flutter_bloc)  |  ✔️  |  ✔️  |    ✖️    | ✖️    |
| [GetX](https://pub.dev/packages/get)  | ✖️  |  ✖️  | ✔️    |✖️    |
| [provider](https://pub.dev/packages/provider)  | ✖️  |  ✖️  | ✖️    | ✔️    | 
| [flutter_hooks](https://pub.dev/packages/flutter_hooks)  | ✔️  | ✔️  | ✖️ |✔️    | 
| [equatable](https://pub.dev/packages/equatable)  | ✔️  | ✔️  | ✖️ |✔️    | 
| [font_awesome_flutter](https://pub.dev/packages/font_awesome_flutter)  | ✔️  | ✔️ | ✔️ |✔️    | 
| [badges](https://pub.dev/packages/badges)  | ✔️  | ✔️ |✔️ |✔️    | 
| [animations](https://pub.dev/packages/animations)  | ✔️  | ✔️ |✔️ |✔️    | 
| [simple_animations](https://pub.dev/packages/simple_animations)  | ✔️  | ✔️ |✔️ |✔️    | 

  <br/>


## Directory Structure (GetX version)
```
📂lib
 │───main.dart  
 │───📂core  
 |   │──app_asset.dart
 |   │──app_color.dart
 |   │──app_data.dart
 |   │──app_icon.dart
 |   │──app_style.dart
 |   │──app_theme.dart
 |   └──app_extension.dart
 └───📂src
     │────📂model
     │    │──bottom_navigation_item.dart
     |    │──product.dart
     |    └──product_category.dart
     └────📂view
     |    │───📂screen
     |    |   |──cart_screen.dart
     |    |   |──favorite_screen.dart
     |    |   |──product_detail_screen.dart
     |    |   |──product_list_screen.dart
     |    |   |──home_screen.dart
     |    |   └──profile_screen.dart
     |    │───📂widget
     │    |   |──counter_button.dart
     │    |   |──custom_page_route.dart
     │    |   |──empty_widget.dart
     │    |   |──fade_animation.dart
     │    |   |──product_list_view.dart
     │    |   |──page_transition.dart
     |    |   └──scale_animation.dart
     └────📂controller
          └──product_controller.dart
```



## Directory Structure (Provider version)

```
📂lib
 │───main.dart  
 │───📂core  
 │   │──app_asset.dart
 │   │──app_color.dart
 │   │──app_data.dart
 │   │──app_icon.dart
 │   │──app_style.dart
 │   │──app_theme.dart
 │   └──app_extension.dart
 └───📂src
     │────📂data
     │    │───📂model
     │    │   |──bottom_navigation_item.dart
     │    │   |──product.dart
     │    │   └──product_category.dart
     │    │───📂repository
     │    │   └──repository.dart
     └────📂presentation
     │    │───📂screen
     │    │   |──cart_screen.dart
     │    │   |──favorite_screen.dart
     │    │   |──product_detail_screen.dart
     │    │   |──product_list_screen.dart
     │    │   |──home_screen.dart
     │    │   └──profile_screen.dart
     │    │───📂widget
     │    │   |──counter_button.dart
     │    │   |──custom_page_route.dart
     │    │   |──empty_widget.dart
     │    │   └──product_list_view.dart
     │    │───📂animation
     │    │   |──fade_animation.dart
     │    │   |──page_transition.dart
     │    │   └──scale_animation.dart
     └────📂business_logic
          └───📂provider
              │───📂product
              │   |──product_provider.dart
              │   └──product_state.dart
              └───📂category
              │    |──category_provider.dart
              │    └──category_state.dart
              └───📂theme
                   |──theme_provider.dart
                   └──theme_state.dart
```


## Directory Structure (Bloc version)

```
📂lib
 │───main.dart  
 │───📂core  
 │   │──app_asset.dart
 │   │──app_color.dart
 │   │──app_data.dart
 │   │──app_icon.dart
 │   │──app_style.dart
 │   │──app_theme.dart
 │   └──app_extension.dart
 └───📂src
     │────📂data
     │    │───📂model
     │    │   |──bottom_navigation_item.dart
     │    │   |──product.dart
     │    │   └──product_category.dart
     │    │───📂repository
     │    │   └──repository.dart
     └────📂presentation
     │    │───📂screen
     │    │   |──cart_screen.dart
     │    │   |──favorite_screen.dart
     │    │   |──product_detail_screen.dart
     │    │   |──product_list_screen.dart
     │    │   |──home_screen.dart
     │    │   └──profile_screen.dart
     │    │───📂widget
     │    │   |──counter_button.dart
     │    │   |──custom_page_route.dart
     │    │   |──empty_widget.dart
     │    │   └──product_list_view.dart
     │    │───📂animation
     │    │   |──fade_animation.dart
     │    │   |──page_transition.dart
     │    │   └──scale_animation.dart
     └────📂business_logic
          └───📂bloc
              │───📂product
              │   |──product_bloc.dart
              │   └──product_state.dart
              │   └──product_event.dart
              └───📂category
              │    |──category_bloc.dart
              │    └──category_state.dart
              │    └──category_event.dart
              └───📂theme
                   |──theme_bloc.dart
                   └──theme_state.dart
                   └──theme_event.dart
```


## Directory Structure (Cubit version)
```
📂lib
 │───main.dart  
 │───📂core  
 │   │──app_asset.dart
 │   │──app_color.dart
 │   │──app_data.dart
 │   │──app_icon.dart
 │   │──app_style.dart
 │   │──app_theme.dart
 │   └──app_extension.dart
 └───📂src
     │────📂data
     │    │───📂model
     │    │   |──bottom_navigation_item.dart
     │    │   |──product.dart
     │    │   └──product_category.dart
     │    │───📂repository
     │    │   └──repository.dart
     └────📂presentation
     │    │───📂screen
     │    │   |──cart_screen.dart
     │    │   |──favorite_screen.dart
     │    │   |──product_detail_screen.dart
     │    │   |──product_list_screen.dart
     │    │   |──home_screen.dart
     │    │   └──profile_screen.dart
     │    │───📂widget
     │    │   |──counter_button.dart
     │    │   |──custom_page_route.dart
     │    │   |──empty_widget.dart
     │    │   └──product_list_view.dart
     │    │───📂animation
     │    │   |──fade_animation.dart
     │    │   |──page_transition.dart
     │    │   └──scale_animation.dart
     └────📂business_logic
          └───📂cubits
              │───📂product
              │   |──product_cubit.dart
              │   └──product_state.dart
              └───📂category
              │    |──category_cubit.dart
              │    └──category_state.dart
              └───📂theme
                   |──theme_cubit.dart
                   └──theme_state.dart
```

<br>

## Created & Maintained By

[SinaSys](https://github.com/SinaSys) 

<br>

##  Other flutter projects
Project Name        |Stars
:-------------------------|-------------------------
[Go rest app](https://github.com/SinaSys/flutter_go_rest_app)|![GitHub stars](https://img.shields.io/github/stars/SinaSys/flutter_go_rest_app?style=social)
|[Office furniture store app](https://github.com/SinaSys/flutter_office_furniture_store_app) |![GitHub stars](https://img.shields.io/github/stars/SinaSys/flutter_office_furniture_store_app?style=social)
|[Ecommerce app](https://github.com/SinaSys/flutter_ecommerce_app) |![GitHub stars](https://img.shields.io/github/stars/SinaSys/flutter_ecommerce_app?style=social)
