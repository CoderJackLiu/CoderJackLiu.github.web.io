# Chirpy Starter

[![Gem Version](https://img.shields.io/gem/v/jekyll-theme-chirpy)][gem]&nbsp;
[![GitHub license](https://img.shields.io/github/license/cotes2020/chirpy-starter.svg?color=blue)][mit]

When installing the [**Chirpy**][chirpy] theme through [RubyGems.org][gem], Jekyll can only read files in the folders
`_data`, `_layouts`, `_includes`, `_sass` and `assets`, as well as a small part of options of the `_config.yml` file
from the theme's gem. If you have ever installed this theme gem, you can use the command
`bundle info --path jekyll-theme-chirpy` to locate these files.

The Jekyll team claims that this is to leave the ball in the user’s court, but this also results in users not being
able to enjoy the out-of-the-box experience when using feature-rich themes.

To fully use all the features of **Chirpy**, you need to copy the other critical files from the theme's gem to your
Jekyll site. The following is a list of targets:

```shell
.
├── _config.yml
├── _plugins
├── _tabs
└── index.html
```

To save you time, and also in case you lose some files while copying, we extract those files/configurations of the
latest version of the **Chirpy** theme and the [CD][CD] workflow to here, so that you can start writing in minutes.

## Usage

Check out the [theme's docs](https://github.com/cotes2020/jekyll-theme-chirpy/wiki).

## Contributing

This repository is automatically updated with new releases from the theme repository. If you encounter any issues or want to contribute to its improvement, please visit the [theme repository][chirpy] to provide feedback.

## License

This work is published under [MIT][mit] License.

[gem]: https://rubygems.org/gems/jekyll-theme-chirpy
[chirpy]: https://github.com/cotes2020/jekyll-theme-chirpy/
[CD]: https://en.wikipedia.org/wiki/Continuous_deployment
[mit]: https://github.com/cotes2020/chirpy-starter/blob/master/LICENSE



set http_proxy=http://127.0.0.1:8889
set https_proxy=http://127.0.0.1:8889


https://github.com/login/oauth/authorize?client_id=Ov23liOwXgpwKGbOuQYn&login_hint=&redirect_uri=https%3A%2F%2Funrealdev-auth.us.auth0.com%2Flogin%2Fcallback&response_type=code&scope=user%3Aemail&state=i4QJ0NBX_KexL9jo4vcmlW7E9H9jOLOP

https://unrealdev.cn/admin/edit

http://127.0.0.1:4000/admin/edit




##注意：
1. 当下次想使用的时候，需要用 ngrok 启用一个服务  
 ```
 ngrok authtoken YOUR_NGROK_AUTHTOKEN (https://ngrok.com/ 官网查看，谷歌登录)
 ```
2. 启动服务
 ```
 ngrok http 4567
 ```
3. 修改edit的代码，修改 redirect_uri 的值为ngrok命令行显示的映射的URL； 这样公开的url就可以配置上了；