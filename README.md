# Convenient Service Integration

## Compatibility Table

| **Ruby Version** | **Rails Version** | **Status** | **Notes** |
| - | - | - | - |
| [Ruby 2.7](https://ruby-doc.org/core-2.7.0/) | [Rails 5.2](https://api.rubyonrails.org/v5.2/) | ✅ | [Requires older "stringio" version](https://stackoverflow.com/a/73228547/12201472). |
| [Ruby 2.7](https://ruby-doc.org/core-2.7.0/) | [Rails 6.0](https://api.rubyonrails.org/v6.0/) | ✅ | [Requires older "stringio" version](https://stackoverflow.com/a/73228547/12201472). |
| [Ruby 2.7](https://ruby-doc.org/core-2.7.0/) | [Rails 6.1](https://api.rubyonrails.org/v6.1/) | ✅ | - |
| [Ruby 2.7](https://ruby-doc.org/core-2.7.0/) | [Rails 7.0](https://api.rubyonrails.org/v7.0/) | ✅ | - |

| **Ruby Version** | **Rails Version** | **Status** | **Notes** |
| - | - | - | - |
| [Ruby 3.0](https://ruby-doc.org/core-3.0.0/) | [Rails 5.2](https://api.rubyonrails.org/v5.2/) | ❌ | [action_dispatch/middleware/static.rb:111 <br/> `initialize': wrong number of arguments (given 3, expected 2) (ArgumentError)](https://stackoverflow.com/a/66756229/12201472). <br/><br/>[Separation of positional and keyword arguments in Ruby 3.0](https://www.ruby-lang.org/en/news/2019/12/12/separation-of-positional-and-keyword-arguments-in-ruby-3-0/). <br/> <br/> [Rails 5.2 doesn't work with Ruby 3.0](https://github.com/rails/rails/issues/40938). |
| [Ruby 3.0](https://ruby-doc.org/core-3.0.0/) | [Rails 6.0](https://api.rubyonrails.org/v6.0/) | ✅ | - |
| [Ruby 3.0](https://ruby-doc.org/core-3.0.0/) | [Rails 6.1](https://api.rubyonrails.org/v6.1/) | ✅ | - |
| [Ruby 3.0](https://ruby-doc.org/core-3.0.0/) | [Rails 7.0](https://api.rubyonrails.org/v7.0/) | ✅ | - |

| **Ruby Version** | **Rails Version** | **Status** | **Notes** |
| - | - | - | - |
| [Ruby 3.1](https://ruby-doc.org/core-3.1.0/) | [Rails 5.2](https://api.rubyonrails.org/v5.2/) | ❌ | Similar issues as with Ruby 3.0. |
| [Ruby 3.1](https://ruby-doc.org/core-3.1.0/) | [Rails 6.0](https://api.rubyonrails.org/v6.0/) | ✅ | - |
| [Ruby 3.1](https://ruby-doc.org/core-3.1.0/) | [Rails 6.1](https://api.rubyonrails.org/v6.1/) | ✅ | - |
| [Ruby 3.1](https://ruby-doc.org/core-3.1.0/) | [Rails 7.0](https://api.rubyonrails.org/v7.0/) | ✅ | - |
