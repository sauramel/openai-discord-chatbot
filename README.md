# Discord Bot using OpenAI API

A reimagined Discord bot that utilizes the OpenAI API for interactions, preserves message history, and employs system messages to create a tailored user experience.

## Features

- **OpenAI Integration**: Engage with users leveraging the prowess of OpenAI models.
- **Dynamic Conversations**: The bot retains message context, ensuring conversations are coherent and context-aware.
- **Customizable Persona**: Through the `system_message.txt`, define the bot's initial character or provide essential instructions.

## Setup

### 1. Clone the Repository:

```bash
git clone https://github.com/sauramel/openai-discord-chatbot
cd openai-discord-chatbot
```

### 2. Install the Dependencies:

First, ensure you have Python 3.x installed. Then:

```bash
pip install -r requirements.txt
```

### 3. Configuration:

Modify the `config.json` template provided in the project files:


    TOKEN: "YOUR DISCORD BOT TOKEN"
    OPENAI_API_KEY: "YOUR OPENAI API TOKEN"
    MAX_CACHE: 5 - NUMBER OF MESSAGES TO REMEMBER
    "COOLDOWN_TIME": 2 - SECONDS TO WAIT BEFORE ACCEPTING A RESPONSE FROM THE USER
    "ROLE_ID": "DISCORD ROLE ID THAT BOT WILL RESPOND TO"
    "OPENAI_MODEL": "gpt-3.5-turbo-16k" - MODEL

### 4. Define Your Bot's Persona:

Edit the `system_message.txt` file to set the bot's introductory message or personality. This helps users understand how to interact with the bot and establishes its persona.

### 5. Run the Bot:
```bash
python chatbot.py
```

## Notes

- This bot's design integrates with models such as `gpt-3.5-turbo-16k` for its balance between cost and context window. However, you can configure it to use other models as per your requirements.
- Most of the code for this project was derived from interactions with ChatGPT.

## License

[MIT License](LICENSE)
