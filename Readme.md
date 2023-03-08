Steps to download your conversations from chat gpt

1. Call the conversations API and save the result. This API gives result as a json file, Save the result as result.json
https://chat.openai.com/backend-api/conversations?offset=0&limit=100
https://chat.openai.com/backend-api/conversations?offset=100&limit=100

Max results you can get in a API call is 100, so generate multiple json files.

2. Change Auth token and cookie in download_chats_from_chat_gpt.sh script 

3. This script will download all the conversations

4. Run generate_txt_file_from_conversations.sh to extract only the text portions 

    output is of the form 

    Conversation "Correlation Coefficients Computed."

"user"

"what is the meaning of this output?\n2023-02-15 12:27:28 - Cosine-Similarity :\tPearson: 0.9685\tSpearman: 0.8000\n2023-02-15 12:27:28 - Manhattan-Distance:\tPearson: 0.9303\tSpearman: 1.0000\n2023-02-15 12:27:28 - Euclidean-Distance:\tPearson: 0.9291\tSpearman: 1.0000\n2023-02-15 12:27:28 - Dot-Product-Similarity:\tPearson: 0.7421\tSpearman: 0.4000"

"assistant"

"The output you provided seems to be the result of a comparison of similarity and distance metrics on some data using Pearson and Spearman correlation coefficients. The metrics used are cosine similarity, Manhattan distance, Euclidean distance, and dot product similarity.\n\nThe Pearson and Spearman coefficients are statistical measures that indicate the correlation or association between two variables. In this case, they are being used to measure the correlation between the different similarity and distance metrics.\n\nThe values that follow the Pearson and Spearman coefficients (0.9685, 0.8000, 0.9303, 1.0000, 0.9291, 1.0000, 0.7421, and 0.4000) are the actual correlation coefficients that have been computed for each of the similarity and distance metrics. These values can range from -1 to 1, with values closer to 1 indicating a stronger correlation or association between the two variables.\n\nWithout additional context about what specific data or models were used, it is difficult to interpret these correlation coefficients and the meaning of the specific similarity and distance metrics used. However, in general, higher correlation coefficients suggest that the similarity or distance metric is a better predictor of the relationship between the data points being compared."
