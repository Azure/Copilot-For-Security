# CheckPhish

This plugin allows users to utilize the CheckPhish AI to analyze URLs for potential phishing threats, tech support scams, cryptojacking, and other security risks. Utilizing CheckPhish's advanced machine learning models, this plugin provides detailed insights including:

1. The likelihood of a URL being malicious
2. Classification of the threat type
3. Timestamps for when the URL was last scanned
4. Detailed threat analysis
5. Historical data on URLs to track behavior over time

You can find detailed product information about CheckPhish here: https://checkphish.bolster.ai/.

# **Features**

1. The plugin requires an API key, which you can obtain by registering on the CheckPhish platform

2. Once registered, your API key can be found in your user profile 

3. From the Plugin manager, locate the CheckPhish Plugin and enable it.

4. Click the "Set Up" button, enter your CheckPhish API key, and click "Save" to activate the plugin.

# **Skills & Prompts**

1. URL Scan - Analyze a URL for potential threats:
   - Example Prompt(s):
     - "Ask checkphish to check [URL]"
     - "What does CheckPhish say about [URL]?"
   - Inputs: [URL]

   Output: The plugin returns a detailed report indicating whether the URL is clean, potentially malicious, or outright dangerous. It includes a classification of the threat, threat level, and other insights.

# **Frequently Asked Questions**

1. How often is the data updated?
   - CheckPhish updates its threat intelligence database in real-time as new threats are identified across the globe.

2. What is the accuracy of CheckPhish?
   - CheckPhish boasts a high accuracy rate, but as with any automated system, it's recommended to use it as a part of a broader security assessment strategy.

3. Can I scan multiple URLs at once?
   - Currently, the API supports scanning one URL at a time. To analyze multiple URLs, you must invoke the API separately for each one.

4. What if I reach my daily scan limit?
   - You can upgrade your account by purchasing a higher tier plan: https://checkphish.bolster.ai/plans/

5. What information does CheckPhish provide in its scan results?
   - A scan result includes details such as the URL’s threat level, detected threat types, geographical location of the scan, timestamps, DNS information, certificates, historical data, and more.

6. What happens if a URL is flagged as malicious?
If a URL is flagged as malicious, you will receive details about the threat type, potential risks, and recommended actions to mitigate the threat, such as blocking the URL or alerting users.
