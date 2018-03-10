# Sandbox

## Incoming messages examples

### Sandbox.RequestHandler

**Without chain(Agala.Provider.Telegram.Chain.Parser)**
```elixir
%Agala.Conn{
  assigns: %{},
  fallback: nil,
  halted: false,
  multi: nil,
  private: %{},
  request: %{
    "message" => %{
      "chat" => %{
        "first_name" => "Example",
        "id" => 123123123, 
        "last_name" => "Exampler",
        "type" => "private"
      },
      "date" => 1520667770,
      "from" => %{
        "first_name" => "Example",
        "id" => 123123123,
        "is_bot" => false,
        "language_code" => "en-US",
        "last_name" => "Exampler"
      },
      "message_id" => 2,
      "text" => "a"
    },
    "update_id" => 705976365
  },
  request_bot_params: %Agala.BotParams{
    common: %{},
    handler: Sandbox.RequestHandler,
    name: "sandbox_telegram_bot",
    private: %{
      http_opts: [recv_timeout: :infinity],
      offset: 0,
      timeout: :infinity
    },
    provider: Agala.Provider.Telegram,
    provider_params: %Agala.Provider.Telegram.Conn.ProviderParams{
      hackney_opts: [],
      poll_timeout: :infinity,
      response_timeout: nil,
      token: "388669315:AAFuob19Pfjc3oKP5Ny0r_5T7-wkQfhNlHY"
    },
    storage: Agala.Bot.Storage.Local
  },
  response: nil,
  responser_name: nil
}

```

**With chain(Agala.Provider.Telegram.Chain.Parser)**
```elixir
%Agala.Conn{
  assigns: %{},
  fallback: nil,
  halted: false,
  multi: nil,
  private: %{},
  request: %Agala.Provider.Telegram.Model.Update{
    callback_query: nil,
    channel_post: nil,
    chosen_inline_result: nil,
    edited_channel_post: nil,
    edited_message: nil,
    inline_query: nil,
    message: %Agala.Provider.Telegram.Model.Message{
      from: %Agala.Provider.Telegram.Model.User{
        first_name: "Example",
        id: 123123123,
        is_bot: false,
        language_code: "en-US",
        last_name: "Exampler",
        username: nil
      },
      new_chat_title: nil,
      date: 1520667967,
      sticker: nil,
      new_chat_members: nil,
      video_note: nil,
      forward_from_message_id: nil,
      supergroup_chat_created: nil,
      video: nil,
      pinned_message: nil,
      entities: nil,
      forward_from_chat: nil,
      contact: nil,
      message_id: 3,
      group_chat_created: nil,
      caption: nil,
      game: nil,
      document: nil,
      text: "s",
      media_group_id: nil,
      location: nil,
      migrate_to_chat_id: nil,
      chat: %Agala.Provider.Telegram.Model.Chat{
        all_members_are_administrators: nil,
        can_set_sticker_set: nil,
        description: nil,
        first_name: "Example",
        id: 123123123,
        invite_link: nil,
        last_name: "Exampler",
        photo: nil,
        pinned_message: nil,
        sticker_set_name: nil,
        title: nil,
        type: "private",
        username: nil
      },
      migrate_from_chat_id: nil,
      forward_date: nil,
      caption_entities: nil,
      audio: nil,
      author_signature: nil,
      venue: nil,
      voice: nil,
      left_chat_member: nil,
      edit_date: nil,
      delete_chat_photo: nil,
      forward_from: nil,
      photo: nil,
      channel_chat_created: nil,
      forward_signature: nil,
      ...
    },
    update_id: 705976366
  },
  request_bot_params: %Agala.BotParams{
    common: %{},
    handler: Sandbox.RequestHandler,
    name: "sandbox_telegram_bot",
    private: %{
      http_opts: [recv_timeout: :infinity],
      offset: 0,
      timeout: :infinity
    },
    provider: Agala.Provider.Telegram,
    provider_params: %Agala.Provider.Telegram.Conn.ProviderParams{
      hackney_opts: [],
      poll_timeout: :infinity,
      response_timeout: nil,
      token: "388669315:AAFuob19Pfjc3oKP5Ny0r_5T7-wkQfhNlHY"
    },
    storage: Agala.Bot.Storage.Local 
  },
  response: nil,
  responser_name: nil
}
```

**Incoming message with attachment file. Without chain(Agala.Provider.Telegram.Chain.Parser)**
```elixir
%Agala.Conn{
  assigns: %{},
  fallback: nil,
  halted: false,
  multi: nil,
  private: %{},
  request: %{
    "message" => %{
      "chat" => %{
        "first_name" => "Example",
        "id" => 123123123, 
        "last_name" => "Exampler",
        "type" => "private"
      },
      "date" => 1520668317,
      "document" => %{
        "file_id" => "BQADAgADqwEAAjxfGEm9fjlEhKaoowI",
        "file_name" => "kkbab5iEqY4.jpg",
        "file_size" => 309489,
        "mime_type" => "image/jpeg",
        "thumb" => %{
          "file_id" => "AAQCABOMsEYOAATH8Tsxe_tnVX5EAAIC",
          "file_size" => 2304,
          "height" => 49,
          "width" => 90
        }
      },
      "from" => %{
        "first_name" => "Example",
        "id" => 123123123,
        "is_bot" => false,
        "language_code" => "en-US",
        "last_name" => "Exampler"
      },
      "message_id" => 4
    },
    "update_id" => 705976367
  },
  request_bot_params: %Agala.BotParams{
    common: %{},
    handler: Sandbox.RequestHandler,
    name: "sandbox_telegram_bot",
    private: %{
      http_opts: [recv_timeout: :infinity],
      offset: 0,
      timeout: :infinity
    },
    provider: Agala.Provider.Telegram,
    provider_params: %Agala.Provider.Telegram.Conn.ProviderParams{
      hackney_opts: [],
      poll_timeout: :infinity,
      response_timeout: nil,
      token: "388669315:AAFuob19Pfjc3oKP5Ny0r_5T7-wkQfhNlHY"
    },
    storage: Agala.Bot.Storage.Local
  },
  response: nil,
  responser_name: nil
}
```

**Incoming message with attachment file. With chain(Agala.Provider.Telegram.Chain.Parser)**
```elixir
%Agala.Conn{
  assigns: %{},
  fallback: nil,
  halted: false,
  multi: nil,
  private: %{},
  request: %Agala.Provider.Telegram.Model.Update{
    callback_query: nil,
    channel_post: nil,
    chosen_inline_result: nil,
    edited_channel_post: nil,
    edited_message: nil,
    inline_query: nil,
    message: %Agala.Provider.Telegram.Model.Message{
      from: %Agala.Provider.Telegram.Model.User{
        first_name: "Example",
        id: 123123123,
        is_bot: false,
        language_code: "en-US",
        last_name: "Exampler",
        username: nil
      },
      new_chat_title: nil,
      date: 1520668422,
      sticker: nil,
      new_chat_members: nil,
      video_note: nil,
      forward_from_message_id: nil,
      supergroup_chat_created: nil,
      video: nil,
      pinned_message: nil,
      entities: nil,
      forward_from_chat: nil,
      contact: nil,
      location: nil,
      message_id: 5,
      group_chat_created: nil,
      caption: nil,
      game: nil,
      document: %Agala.Provider.Telegram.Model.Document{
        file_id: "BQADAgADiwEAAsJuIUlO6qQdeE8VMwI",
        file_name: "kkbab5iEqY4.jpg",
        file_size: 309489,
        mime_type: "image/jpeg",
        thumb: %Agala.Provider.Telegram.Model.PhotoSize{
          file_id: "AAQCABOMsEYOAATH8Tsxe_tnVX5EAAIC",
          file_size: 2304,
          height: 49,
          width: 90
        }
      },
      media_group_id: nil,
      migrate_to_chat_id: nil,
      chat: %Agala.Provider.Telegram.Model.Chat{
        all_members_are_administrators: nil,
        can_set_sticker_set: nil,
        description: nil,
        first_name: "Example",
        id: 123123123,
        invite_link: nil,
        last_name: "Exampler",
        photo: nil,
        pinned_message: nil,
        sticker_set_name: nil,
        title: nil,
        type: "private",
        username: nil
      },
      migrate_from_chat_id: nil,
      forward_date: nil,
      caption_entities: nil,
      audio: nil,
      author_signature: nil,
      venue: nil,
      text: nil,
      voice: nil,
      left_chat_member: nil,
      edit_date: nil,
      delete_chat_photo: nil,
      forward_from: nil,
      photo: nil,
      channel_chat_created: nil,
      forward_signature: nil,
      ...
    },
    update_id: 705976368
  },
  request_bot_params: %Agala.BotParams{
    common: %{},
    handler: Sandbox.RequestHandler,
    name: "sandbox_telegram_bot",
    private: %{
      http_opts: [recv_timeout: :infinity],
      offset: 0,
      timeout: :infinity
    },
    provider: Agala.Provider.Telegram,
    provider_params: %Agala.Provider.Telegram.Conn.ProviderParams{
      hackney_opts: [],
      poll_timeout: :infinity,
      response_timeout: nil,
      token: "388669315:AAFuob19Pfjc3oKP5Ny0r_5T7-wkQfhNlHY"
    },
    storage: Agala.Bot.Storage.Local
  },
  response: nil,
  responser_name: nil
}
```

### Sandbox.MessageSender

**Sending message MessageSender#answer_with_fallback(user_telegram_id, message)**
```elixir
%Agala.Conn{
  assigns: %{},
  fallback: %{
    "ok" => true,
    "result" => %{
      "chat" => %{
        "first_name" => "Example",
        "id" => 123123123,
        "last_name" => "Exampler",
        "type" => "private"
      },
      "date" => 1520670407,
      "from" => %{
        "first_name" => "sandbox_example",
        "id" => 388669315,
        "is_bot" => true,
        "username" => "sandbox_example_bot"
      },
      "message_id" => 8,
      "text" => "answer"
    }
  },
  halted: false,
  multi: nil,
  private: %{},
  request: nil,
  request_bot_params: %Agala.BotParams{
    common: %{},
    handler: nil,
    name: nil,
    private: %{},
    provider: nil,
    provider_params: %{},
    storage: Agala.Bot.Storage.Local
  },
  response: %Agala.Provider.Telegram.Conn.Response{
    method: :post,
    opts: [],
    payload: %{
      body: %{chat_id: 123123123, text: "answer"},
      headers: [{"Content-Type", "application/json"}],
      url: #Function<0.36859112/1 in Agala.Provider.Telegram.Helpers.base_url/1>
    }
  },
  responser_name: "sandbox_telegram_bot"
}
```
