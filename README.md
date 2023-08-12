# OpenAI Discord Chatbot

This project enables you to deploy a Discord bot powered by OpenAI's GPT-3.5 model. It integrates with the chat models and offers features such as caching a configurable number of messages for each user and using newer chat endpoints.

## Features

1. **Customizable Persona**: Through the `system_message.txt`, you can define the bot's behavior and personality. Want a cheerful assistant or a quirky know-it-all? You decide!
2. **Configurable Role Permissions**: Ensure that only specific roles can interact with the bot for controlled interactions.
3. **Dynamic Message Caching**: Retains the context of the conversation, improving conversational flow.
4. **Model Flexibility**: The bot, by default, uses the GPT-3.5 Turbo-16k model for a balance of cost efficiency and extended context. However, you have the freedom to choose other OpenAI models as per your preferences.


## Getting Started:

### 1. Clone the Repository:

```bash
git clone https://github.com/sauramel/openai-discord-chatbot
cd openai-discord-chatbot
```

### 2. Docker Deployment:
Building the Docker image:
```bash
docker build -t sauramello/openai-discord-chatbot .
```
Running the Docker container:
Replace the placeholders with your actual tokens and desired configuration.
```bash
docker run \
-e DISCORD_BOT_TOKEN="YOUR_DISCORD_BOT_TOKEN" \
-e OPENAI_API_KEY="YOUR_OPENAI_API_KEY" \
-e MAX_CACHE=YOUR_DESIRED_NUMBER_FOR_MESSAGE_CACHE \
-e COOLDOWN_TIME=YOUR_DESIRED_COOLDOWN_TIME_IN_SECONDS \
-e ROLE_ID="YOUR_DISCORD_ROLE_ID_THAT_BOT_WILL_RESPOND_TO" \
-e OPENAI_MODEL="YOUR_CHOSEN_OPENAI_MODEL" \
-v /path/on/your/host/system_message.txt:/openai-discord-chatbot/system_message.txt \
sauramello/openai-discord-chatbot
```
### Configuring the Bot's Behavior with `system_message.txt`

The `system_message.txt` file is crucial for informing the bot about its behavior, tone, and interaction style. While this message is not directly passed to the users, it provides context to the bot about how it should respond, behave, and interact during the conversation.

#### Steps to configure:

1. Open the `system_message.txt` file in your preferred text editor.
2. Replace the existing text with instructions or context that you believe would shape the bot's behavior appropriately. For example, you can set the bot to be more formal, casual, or even role-play a specific character.
3. Save the changes.

When deploying the bot within a Docker container, ensure that you pass the path to your `system_message.txt` using the volume mounting option.
Remember, while the message in this file isn't shown to users, it directly influences the bot's tone, style, and manner of interaction. Carefully craft this to suit the desired bot persona!


### Notes:

This bot is specifically optimized for the `gpt-3.5-turbo-16k` model due to its balance between performance and cost. However, you can configure it to use other OpenAI models such as:

- `gpt-3.5-turbo`
- `gpt-4`
- `gpt-4-32k`

Remember that different models come with varying token limits, capabilities, and costs. Hence, it's essential to choose a model that aligns with the requirements of your bot interactions and your budget.

Credits to ChatGPT for the foundational code used in this project.


