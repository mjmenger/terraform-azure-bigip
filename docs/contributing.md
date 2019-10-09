# Contributing
Key Elements to consider: 

- Make it relevant to the customer  
- Keep It Simple 
- Preparing to Publish 

## Make it Relevant to the Customer 

Many of our customers are looking to deploy F5 products using Infrastructure-as-Code through CI/CD pipelines.  Ensure your example or module are compatible whenever possible, preferably through demonstration. 

If you hear of specific customer requests, add feature requests to the relevant issues list and add a description to this document.  

## Keep It Simple 

Terraform examples should be as simple as possible.  The goal is to make it easy for F5 customers to understand what the example is trying to achieve and, ultimately, use the code and concepts when managing their F5 investments.  

### Key design considerations: 

- Use a Spike and Spine model of repositories to emphasize reusables assets.  

  - Spine repositories deliver highly reusable results, like provisioning a BIGIP.  

  - Spike repositories deliver solutions that compose the outputs of the Spine repositories, such as a Customer demo that incorporates a BIGIP and a Kubernetes cluster. 

- Use variables to help promote secure, reusable code: 

  - Always abstract region-specific information (e.g., AMIs) 

  - Always abstract user-specific information (e.g., application name)  

  - Always abstract sensitive information (e.g., tokens and keys) 

- When referencing sensitive information such as tokens or keys, use a terraform.tfvars file 

 - Use a main.tf, variables.tf, and outputs.tf file in all examples, even if they’re empty.  

 - Reuse existing modules as much as possible (https://registry.terraform.io is a good resource) 

If an existing module does not fit your needs, then modify the existing module and commit the code back via a pull-request 

If your project files extend beyond a couple of screenfuls of content, they become difficult to navigate and maintain. Address this complexity by: 

- Break your code into resource type files (e.g., ami.tf, s3.tf, cloudwatch.tf) 

- Encapsulate your code into resource modules (e.g., a vpc module) or pattern modules (e.g., a load balanced pool), for guidance read When to write a module  

## Preparing to Publish 

Before you publish your example or module, ensure the following items are addressed: 

- Ensure you’re using consistent formatting by running terraform fmt -recursive  

- [Terraform Style Guide](https://www.terraform.io/docs/configuration/style.html )

- Test your deployment in multiple regions to ensure you are not using region-specific resources like AMIs  

- Name repositories in conformance with Hashicorp guidelines 

- Document, Document, Document... without proper documentation, your example or module will be unusable by most F5 customers.   

  - Write documentation as you code - It is easy to incrementally add to your documentation than to remember why you wrote what you wrote three weeks or three months ago 

  - Focus comments on why code was written rather than how, for example, if your code works around a bug, provide a link to the bug in the comments 

- If creating a module, always provide examples under an examples folder 

- Regularly enlist a colleague to try out your code and document any steps they had to take to achieve a successful result  