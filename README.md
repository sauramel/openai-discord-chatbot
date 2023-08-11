# Discord Bot using OpenAI API

A reimagined Discord bot that utilizes the OpenAI API for interactions, preserves message history, and employs system messages to create a tailored user experience.

## Features

- **OpenAI Integration**: Engage with users leveraging the prowess of OpenAI models.
- **Dynamic Conversations**: The bot retains message context, ensuring conversations are coherent and context-aware.
- **Customizable Persona**: Through the `system_message.txt`, define the bot's initial character or provide essential instructions.

## Setup

### 1. Clone the Repository:

```bash
git clone <repository_url>
cd <repository_name>
\```

### 2. Install the Dependencies:

First, ensure you have Python 3.x installed. Then:

```bash
pip install -r requirements.txt
```

### 3. Configuration:

Modify the `config.json` template provided in the project files:

- `TOKEN`: Your Discord Bot token.
- `OPENAI_API_KEY`: Your OpenAI API key.
- `OPENAI_MODEL`: The OpenAI model you wish to use (default is `gpt-3.5-turbo-16k` but can be changed).
- Other configurations as required.

### 4. Define Your Bot's Persona:

Edit the `system_message.txt` file to set the bot's introductory message or personality. This helps users understand how to interact with the bot and establishes its persona.

### 5. Run the Bot:
```bash
python <name_of_main_script>.py
```

## Notes

- This bot's design integrates with models such as `gpt-3.5-turbo-16k` for its balance between cost and context window. However, you can configure it to use other models as per your requirements.
- Much of the development insights for this project were derived from interactions with ChatGPT.

## License

[MIT License](LICENSE)
