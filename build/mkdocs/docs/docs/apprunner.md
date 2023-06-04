<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apprunner</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS App Runner

### Description

App Runner

App Runner is an application service that provides a fast, simple, and
cost-effective way to go directly from an existing container image or
source code to a running service in the Amazon Web Services Cloud in
seconds. You don't need to learn new technologies, decide which compute
service to use, or understand how to provision and configure Amazon Web
Services resources.

App Runner connects directly to your container registry or source code
repository. It provides an automatic delivery pipeline with fully
managed operations, high performance, scalability, and security.

For more information about App Runner, see the [App Runner Developer
Guide](https://docs.aws.amazon.com/apprunner/latest/dg/). For release
information, see the [App Runner Release
Notes](https://docs.aws.amazon.com/apprunner/latest/relnotes/).

To install the Software Development Kits (SDKs), Integrated Development
Environment (IDE) Toolkits, and command line tools that you can use to
access the API, see [Tools for Amazon Web
Services](https://aws.amazon.com/developer/tools/).

**Endpoints**

For a list of Region-specific endpoints that App Runner supports, see
[App Runner endpoints and
quotas](https://docs.aws.amazon.com/general/latest/gr/apprunner.html) in
the *Amazon Web Services General Reference*.

### Usage

    apprunner(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apprunner_:_config">config</code></td>
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

    svc <- apprunner(
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
<td style="text-align: left;"><a href="../apprunner_associate_custom_domain/"> associate_custom_domain </a></td>
<td style="text-align: left;">Associate your own domain name with the
App Runner subdomain URL of your App Runner service</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apprunner_create_auto_scaling_configuration/"> create_auto_scaling_configuration </a></td>
<td style="text-align: left;">Create an App Runner automatic scaling
configuration resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apprunner_create_connection/"> create_connection </a></td>
<td style="text-align: left;">Create an App Runner connection
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apprunner_create_observability_configuration/"> create_observability_configuration </a></td>
<td style="text-align: left;">Create an App Runner observability
configuration resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apprunner_create_service/"> create_service </a></td>
<td style="text-align: left;">Create an App Runner service</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apprunner_create_vpc_connector/"> create_vpc_connector </a></td>
<td style="text-align: left;">Create an App Runner VPC connector
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apprunner_create_vpc_ingress_connection/"> create_vpc_ingress_connection </a></td>
<td style="text-align: left;">Create an App Runner VPC Ingress
Connection resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apprunner_delete_auto_scaling_configuration/"> delete_auto_scaling_configuration </a></td>
<td style="text-align: left;">Delete an App Runner automatic scaling
configuration resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apprunner_delete_connection/"> delete_connection </a></td>
<td style="text-align: left;">Delete an App Runner connection</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apprunner_delete_observability_configuration/"> delete_observability_configuration </a></td>
<td style="text-align: left;">Delete an App Runner observability
configuration resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apprunner_delete_service/"> delete_service </a></td>
<td style="text-align: left;">Delete an App Runner service</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apprunner_delete_vpc_connector/"> delete_vpc_connector </a></td>
<td style="text-align: left;">Delete an App Runner VPC connector
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apprunner_delete_vpc_ingress_connection/"> delete_vpc_ingress_connection </a></td>
<td style="text-align: left;">Delete an App Runner VPC Ingress
Connection resource that's associated with an App Runner service</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apprunner_describe_auto_scaling_configuration/"> describe_auto_scaling_configuration </a></td>
<td style="text-align: left;">Return a full description of an App Runner
automatic scaling configuration resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apprunner_describe_custom_domains/"> describe_custom_domains </a></td>
<td style="text-align: left;">Return a description of custom domain
names that are associated with an App Runner service</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apprunner_describe_observability_configuration/"> describe_observability_configuration </a></td>
<td style="text-align: left;">Return a full description of an App Runner
observability configuration resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apprunner_describe_service/"> describe_service </a></td>
<td style="text-align: left;">Return a full description of an App Runner
service</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apprunner_describe_vpc_connector/"> describe_vpc_connector </a></td>
<td style="text-align: left;">Return a description of an App Runner VPC
connector resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apprunner_describe_vpc_ingress_connection/"> describe_vpc_ingress_connection </a></td>
<td style="text-align: left;">Return a full description of an App Runner
VPC Ingress Connection resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apprunner_disassociate_custom_domain/"> disassociate_custom_domain </a></td>
<td style="text-align: left;">Disassociate a custom domain name from an
App Runner service</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apprunner_list_auto_scaling_configurations/"> list_auto_scaling_configurations </a></td>
<td style="text-align: left;">Returns a list of active App Runner
automatic scaling configurations in your Amazon Web Services
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apprunner_list_connections/"> list_connections </a></td>
<td style="text-align: left;">Returns a list of App Runner connections
that are associated with your Amazon Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apprunner_list_observability_configurations/"> list_observability_configurations </a></td>
<td style="text-align: left;">Returns a list of active App Runner
observability configurations in your Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apprunner_list_operations/"> list_operations </a></td>
<td style="text-align: left;">Return a list of operations that occurred
on an App Runner service</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apprunner_list_services/"> list_services </a></td>
<td style="text-align: left;">Returns a list of running App Runner
services in your Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apprunner_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">List tags that are associated with for an
App Runner resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apprunner_list_vpc_connectors/"> list_vpc_connectors </a></td>
<td style="text-align: left;">Returns a list of App Runner VPC
connectors in your Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apprunner_list_vpc_ingress_connections/"> list_vpc_ingress_connections </a></td>
<td style="text-align: left;">Return a list of App Runner VPC Ingress
Connections in your Amazon Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apprunner_pause_service/"> pause_service </a></td>
<td style="text-align: left;">Pause an active App Runner service</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apprunner_resume_service/"> resume_service </a></td>
<td style="text-align: left;">Resume an active App Runner service</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apprunner_start_deployment/"> start_deployment </a></td>
<td style="text-align: left;">Initiate a manual deployment of the latest
commit in a source code repository or the latest image in a source image
repository to an App Runner service</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apprunner_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Add tags to, or update the tag values of,
an App Runner resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apprunner_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Remove tags from an App Runner
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../apprunner_update_service/"> update_service </a></td>
<td style="text-align: left;">Update an App Runner service</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../apprunner_update_vpc_ingress_connection/"> update_vpc_ingress_connection </a></td>
<td style="text-align: left;">Update an existing App Runner VPC Ingress
Connection resource</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- apprunner()
    svc$associate_custom_domain(
      Foo = 123
    )

    ## End(Not run)
