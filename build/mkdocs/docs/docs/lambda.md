<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Lambda

### Description

Lambda

**Overview**

Lambda is a compute service that lets you run code without provisioning
or managing servers. Lambda runs your code on a high-availability
compute infrastructure and performs all of the administration of the
compute resources, including server and operating system maintenance,
capacity provisioning and automatic scaling, code monitoring and
logging. With Lambda, you can run code for virtually any type of
application or backend service. For more information about the Lambda
service, see [What is
Lambda](https://docs.aws.amazon.com/lambda/latest/dg/welcome.html) in
the **Lambda Developer Guide**.

The *Lambda API Reference* provides information about each of the API
methods, including details about the parameters in each API request and
response.

You can use Software Development Kits (SDKs), Integrated Development
Environment (IDE) Toolkits, and command line tools to access the API.
For installation instructions, see [Tools for Amazon Web
Services](https://aws.amazon.com/developer/tools/).

For a list of Region-specific endpoints that Lambda supports, see Lambda
endpoints and quotas in the *Amazon Web Services General Reference.*.

When making the API calls, you will need to authenticate your request by
providing a signature. Lambda supports signature version 4. For more
information, see [Signature Version 4 signing
process](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)
in the *Amazon Web Services General Reference.*.

**CA certificates**

Because Amazon Web Services SDKs use the CA certificates from your
computer, changes to the certificates on the Amazon Web Services servers
can cause connection failures when you attempt to use an SDK. You can
prevent these failures by keeping your computer's CA certificates and
operating system up-to-date. If you encounter this issue in a corporate
environment and do not manage your own computer, you might need to ask
an administrator to assist with the update process. The following list
shows minimum operating system and Java versions:

-   Microsoft Windows versions that have updates from January 2005 or
    later installed contain at least one of the required CAs in their
    trust list.

-   Mac OS X 10.4 with Java for Mac OS X 10.4 Release 5 (February 2007),
    Mac OS X 10.5 (October 2007), and later versions contain at least
    one of the required CAs in their trust list.

-   Red Hat Enterprise Linux 5 (March 2007), 6, and 7 and CentOS 5, 6,
    and 7 all contain at least one of the required CAs in their default
    trusted CA list.

-   Java 1.4.2\_12 (May 2006), 5 Update 2 (March 2005), and all later
    versions, including Java 6 (December 2006), 7, and 8, contain at
    least one of the required CAs in their default trusted CA list.

When accessing the Lambda management console or Lambda API endpoints,
whether through browsers or programmatically, you will need to ensure
your client machines support any of the following CAs:

-   Amazon Root CA 1

-   Starfield Services Root Certificate Authority - G2

-   Starfield Class 2 Certification Authority

Root certificates from the first two authorities are available from
[Amazon trust services](https://www.amazontrust.com/repository/), but
keeping your computer up-to-date is the more straightforward solution.
To learn more about ACM-provided certificates, see [Amazon Web Services
Certificate Manager
FAQs.](https://aws.amazon.com/certificate-manager/faqs/#certificates)

### Usage

    lambda(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lambda_:_config">config</code></td>
<td><p>Optional configuration of credentials, endpoint, and/or
region.</p>
<ul>
<li><p><strong>access_key_id</strong>: AWS access key ID</p></li>
<li><p><strong>secret_access_key</strong>: AWS secret access
key</p></li>
<li><p><strong>session_token</strong>: AWS temporary session
token</p></li>
<li><p><strong>profile</strong>: The name of a profile to use. If not
given, then the default profile is used.</p></li>
<li><p><strong>anonymous</strong>: Set anonymous credentials.</p></li>
<li><p><strong>endpoint</strong>: The complete URL to use for the
constructed client.</p></li>
<li><p><strong>region</strong>: The AWS Region used in instantiating the
client.</p></li>
<li><p><strong>close_connection</strong>: Immediately close all HTTP
connections.</p></li>
<li><p><strong>timeout</strong>: The time in seconds till a timeout
exception is thrown when attempting to make a connection. The default is
60 seconds.</p></li>
<li><p><strong>s3_force_path_style</strong>: Set this to
<code>true</code> to force the request to use path-style addressing,
i.e., <code
style="white-space: pre;">⁠http://s3.amazonaws.com/BUCKET/KEY⁠</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A client for the service. You can call the service's operations using
syntax like `svc$operation(...)`, where `svc` is the name you've
assigned to the client. The available operations are listed in the
Operations section.

### Service syntax

    svc <- lambda(
      config = list(
        credentials = list(
          creds = list(
            access_key_id = "string",
            secret_access_key = "string",
            session_token = "string"
          ),
          profile = "string",
          anonymous = "logical"
        ),
        endpoint = "string",
        region = "string",
        close_connection = "logical",
        timeout = "numeric",
        s3_force_path_style = "logical"
      )
    )

### Operations

<table>
<tbody>
<tr class="odd">
<td style="text-align: left;"><a href="../lambda_add_layer_version_permission/"> add_layer_version_permission </a></td>
<td style="text-align: left;">Adds permissions to the resource-based
policy of a version of an Lambda layer</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lambda_add_permission/"> add_permission </a></td>
<td style="text-align: left;">Grants an Amazon Web Service, Amazon Web
Services account, or Amazon Web Services organization permission to use
a function</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lambda_create_alias/"> create_alias </a></td>
<td style="text-align: left;">Creates an alias for a Lambda function
version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lambda_create_code_signing_config/"> create_code_signing_config </a></td>
<td style="text-align: left;">Creates a code signing configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lambda_create_event_source_mapping/"> create_event_source_mapping </a></td>
<td style="text-align: left;">Creates a mapping between an event source
and an Lambda function</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lambda_create_function/"> create_function </a></td>
<td style="text-align: left;">Creates a Lambda function</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lambda_create_function_url_config/"> create_function_url_config </a></td>
<td style="text-align: left;">Creates a Lambda function URL with the
specified configuration parameters</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lambda_delete_alias/"> delete_alias </a></td>
<td style="text-align: left;">Deletes a Lambda function alias</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lambda_delete_code_signing_config/"> delete_code_signing_config </a></td>
<td style="text-align: left;">Deletes the code signing
configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lambda_delete_event_source_mapping/"> delete_event_source_mapping </a></td>
<td style="text-align: left;">Deletes an event source mapping</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lambda_delete_function/"> delete_function </a></td>
<td style="text-align: left;">Deletes a Lambda function</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lambda_delete_function_code_signing_config/"> delete_function_code_signing_config </a></td>
<td style="text-align: left;">Removes the code signing configuration
from the function</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lambda_delete_function_concurrency/"> delete_function_concurrency </a></td>
<td style="text-align: left;">Removes a concurrent execution limit from
a function</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lambda_delete_function_event_invoke_config/"> delete_function_event_invoke_config </a></td>
<td style="text-align: left;">Deletes the configuration for asynchronous
invocation for a function, version, or alias</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lambda_delete_function_url_config/"> delete_function_url_config </a></td>
<td style="text-align: left;">Deletes a Lambda function URL</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lambda_delete_layer_version/"> delete_layer_version </a></td>
<td style="text-align: left;">Deletes a version of an Lambda layer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lambda_delete_provisioned_concurrency_config/"> delete_provisioned_concurrency_config </a></td>
<td style="text-align: left;">Deletes the provisioned concurrency
configuration for a function</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lambda_get_account_settings/"> get_account_settings </a></td>
<td style="text-align: left;">Retrieves details about your account's
limits and usage in an Amazon Web Services Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lambda_get_alias/"> get_alias </a></td>
<td style="text-align: left;">Returns details about a Lambda function
alias</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lambda_get_code_signing_config/"> get_code_signing_config </a></td>
<td style="text-align: left;">Returns information about the specified
code signing configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lambda_get_event_source_mapping/"> get_event_source_mapping </a></td>
<td style="text-align: left;">Returns details about an event source
mapping</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lambda_get_function/"> get_function </a></td>
<td style="text-align: left;">Returns information about the function or
function version, with a link to download the deployment package that's
valid for 10 minutes</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lambda_get_function_code_signing_config/"> get_function_code_signing_config </a></td>
<td style="text-align: left;">Returns the code signing configuration for
the specified function</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lambda_get_function_concurrency/"> get_function_concurrency </a></td>
<td style="text-align: left;">Returns details about the reserved
concurrency configuration for a function</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lambda_get_function_configuration/"> get_function_configuration </a></td>
<td style="text-align: left;">Returns the version-specific settings of a
Lambda function or version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lambda_get_function_event_invoke_config/"> get_function_event_invoke_config </a></td>
<td style="text-align: left;">Retrieves the configuration for
asynchronous invocation for a function, version, or alias</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lambda_get_function_url_config/"> get_function_url_config </a></td>
<td style="text-align: left;">Returns details about a Lambda function
URL</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lambda_get_layer_version/"> get_layer_version </a></td>
<td style="text-align: left;">Returns information about a version of an
Lambda layer, with a link to download the layer archive that's valid for
10 minutes</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lambda_get_layer_version_by_arn/"> get_layer_version_by_arn </a></td>
<td style="text-align: left;">Returns information about a version of an
Lambda layer, with a link to download the layer archive that's valid for
10 minutes</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lambda_get_layer_version_policy/"> get_layer_version_policy </a></td>
<td style="text-align: left;">Returns the permission policy for a
version of an Lambda layer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lambda_get_policy/"> get_policy </a></td>
<td style="text-align: left;">Returns the resource-based IAM policy for
a function, version, or alias</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lambda_get_provisioned_concurrency_config/"> get_provisioned_concurrency_config </a></td>
<td style="text-align: left;">Retrieves the provisioned concurrency
configuration for a function's alias or version</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lambda_get_runtime_management_config/"> get_runtime_management_config </a></td>
<td style="text-align: left;">Retrieves the runtime management
configuration for a function's version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lambda_invoke/"> invoke </a></td>
<td style="text-align: left;">Invokes a Lambda function</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lambda_invoke_async/"> invoke_async </a></td>
<td style="text-align: left;">For asynchronous function invocation, use
Invoke</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lambda_invoke_with_response_stream/"> invoke_with_response_stream </a></td>
<td style="text-align: left;">Configure your Lambda functions to stream
response payloads back to clients</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lambda_list_aliases/"> list_aliases </a></td>
<td style="text-align: left;">Returns a list of aliases for a Lambda
function</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lambda_list_code_signing_configs/"> list_code_signing_configs </a></td>
<td style="text-align: left;">Returns a list of code signing
configurations</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lambda_list_event_source_mappings/"> list_event_source_mappings </a></td>
<td style="text-align: left;">Lists event source mappings</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lambda_list_function_event_invoke_configs/"> list_function_event_invoke_configs </a></td>
<td style="text-align: left;">Retrieves a list of configurations for
asynchronous invocation for a function</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lambda_list_functions/"> list_functions </a></td>
<td style="text-align: left;">Returns a list of Lambda functions, with
the version-specific configuration of each</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lambda_list_functions_by_code_signing_config/"> list_functions_by_code_signing_config </a></td>
<td style="text-align: left;">List the functions that use the specified
code signing configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lambda_list_function_url_configs/"> list_function_url_configs </a></td>
<td style="text-align: left;">Returns a list of Lambda function URLs for
the specified function</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lambda_list_layers/"> list_layers </a></td>
<td style="text-align: left;">Lists Lambda layers and shows information
about the latest version of each</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lambda_list_layer_versions/"> list_layer_versions </a></td>
<td style="text-align: left;">Lists the versions of an Lambda layer</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lambda_list_provisioned_concurrency_configs/"> list_provisioned_concurrency_configs </a></td>
<td style="text-align: left;">Retrieves a list of provisioned
concurrency configurations for a function</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lambda_list_tags/"> list_tags </a></td>
<td style="text-align: left;">Returns a function's tags</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lambda_list_versions_by_function/"> list_versions_by_function </a></td>
<td style="text-align: left;">Returns a list of versions, with the
version-specific configuration of each</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lambda_publish_layer_version/"> publish_layer_version </a></td>
<td style="text-align: left;">Creates an Lambda layer from a ZIP
archive</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lambda_publish_version/"> publish_version </a></td>
<td style="text-align: left;">Creates a version from the current code
and configuration of a function</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lambda_put_function_code_signing_config/"> put_function_code_signing_config </a></td>
<td style="text-align: left;">Update the code signing configuration for
the function</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lambda_put_function_concurrency/"> put_function_concurrency </a></td>
<td style="text-align: left;">Sets the maximum number of simultaneous
executions for a function, and reserves capacity for that concurrency
level</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lambda_put_function_event_invoke_config/"> put_function_event_invoke_config </a></td>
<td style="text-align: left;">Configures options for asynchronous
invocation on a function, version, or alias</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lambda_put_provisioned_concurrency_config/"> put_provisioned_concurrency_config </a></td>
<td style="text-align: left;">Adds a provisioned concurrency
configuration to a function's alias or version</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lambda_put_runtime_management_config/"> put_runtime_management_config </a></td>
<td style="text-align: left;">Sets the runtime management configuration
for a function's version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lambda_remove_layer_version_permission/"> remove_layer_version_permission </a></td>
<td style="text-align: left;">Removes a statement from the permissions
policy for a version of an Lambda layer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lambda_remove_permission/"> remove_permission </a></td>
<td style="text-align: left;">Revokes function-use permission from an
Amazon Web Service or another Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lambda_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds tags to a function</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lambda_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes tags from a function</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lambda_update_alias/"> update_alias </a></td>
<td style="text-align: left;">Updates the configuration of a Lambda
function alias</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lambda_update_code_signing_config/"> update_code_signing_config </a></td>
<td style="text-align: left;">Update the code signing configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lambda_update_event_source_mapping/"> update_event_source_mapping </a></td>
<td style="text-align: left;">Updates an event source mapping</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lambda_update_function_code/"> update_function_code </a></td>
<td style="text-align: left;">Updates a Lambda function's code</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lambda_update_function_configuration/"> update_function_configuration </a></td>
<td style="text-align: left;">Modify the version-specific settings of a
Lambda function</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lambda_update_function_event_invoke_config/"> update_function_event_invoke_config </a></td>
<td style="text-align: left;">Updates the configuration for asynchronous
invocation for a function, version, or alias</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lambda_update_function_url_config/"> update_function_url_config </a></td>
<td style="text-align: left;">Updates the configuration for a Lambda
function URL</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- lambda()
    svc$add_layer_version_permission(
      Foo = 123
    )

    ## End(Not run)
