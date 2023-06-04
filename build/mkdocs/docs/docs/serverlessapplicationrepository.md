<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>serverlessapplicationrepository</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWSServerlessApplicationRepository

### Description

The AWS Serverless Application Repository makes it easy for developers
and enterprises to quickly find and deploy serverless applications in
the AWS Cloud. For more information about serverless applications, see
Serverless Computing and Applications on the AWS website.

The AWS Serverless Application Repository is deeply integrated with the
AWS Lambda console, so that developers of all levels can get started
with serverless computing without needing to learn anything new. You can
use category keywords to browse for applications such as web and mobile
backends, data processing applications, or chatbots. You can also search
for applications by name, publisher, or event source. To use an
application, you simply choose it, configure any required fields, and
deploy it with a few clicks.

You can also easily publish applications, sharing them publicly with the
community at large, or privately within your team or across your
organization. To publish a serverless application (or app), you can use
the AWS Management Console, AWS Command Line Interface (AWS CLI), or AWS
SDKs to upload the code. Along with the code, you upload a simple
manifest file, also known as the AWS Serverless Application Model (AWS
SAM) template. For more information about AWS SAM, see AWS Serverless
Application Model (AWS SAM) on the AWS Labs GitHub repository.

The AWS Serverless Application Repository Developer Guide contains more
information about the two developer experiences available:

-   Consuming Applications – Browse for applications and view
    information about them, including source code and readme files. Also
    install, configure, and deploy applications of your choosing.

    Publishing Applications – Configure and upload applications to make
    them available to other developers, and publish new versions of
    applications.

### Usage

    serverlessapplicationrepository(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="serverlessapplicationrepository_:_config">config</code></td>
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

    svc <- serverlessapplicationrepository(
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
<td style="text-align: left;"><a href="../serverlessapplicationrepository_create_application/"> create_application </a></td>
<td style="text-align: left;">Creates an application, optionally
including an AWS SAM file to create the first application version in the
same call</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../serverlessapplicationrepository_create_application_version/"> create_application_version </a></td>
<td style="text-align: left;">Creates an application version</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../serverlessapplicationrepository_create_cloud_formation_change_set/"> create_cloud_formation_change_set </a></td>
<td style="text-align: left;">Creates an AWS CloudFormation change set
for the given application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../serverlessapplicationrepository_create_cloud_formation_template/"> create_cloud_formation_template </a></td>
<td style="text-align: left;">Creates an AWS CloudFormation
template</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../serverlessapplicationrepository_delete_application/"> delete_application </a></td>
<td style="text-align: left;">Deletes the specified application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../serverlessapplicationrepository_get_application/"> get_application </a></td>
<td style="text-align: left;">Gets the specified application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../serverlessapplicationrepository_get_application_policy/"> get_application_policy </a></td>
<td style="text-align: left;">Retrieves the policy for the
application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../serverlessapplicationrepository_get_cloud_formation_template/"> get_cloud_formation_template </a></td>
<td style="text-align: left;">Gets the specified AWS CloudFormation
template</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../serverlessapplicationrepository_list_application_dependencies/"> list_application_dependencies </a></td>
<td style="text-align: left;">Retrieves the list of applications nested
in the containing application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../serverlessapplicationrepository_list_applications/"> list_applications </a></td>
<td style="text-align: left;">Lists applications owned by the
requester</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../serverlessapplicationrepository_list_application_versions/"> list_application_versions </a></td>
<td style="text-align: left;">Lists versions for the specified
application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../serverlessapplicationrepository_put_application_policy/"> put_application_policy </a></td>
<td style="text-align: left;">Sets the permission policy for an
application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../serverlessapplicationrepository_unshare_application/"> unshare_application </a></td>
<td style="text-align: left;">Unshares an application from an AWS
Organization</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../serverlessapplicationrepository_update_application/"> update_application </a></td>
<td style="text-align: left;">Updates the specified application</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- serverlessapplicationrepository()
    svc$create_application(
      Foo = 123
    )

    ## End(Not run)
