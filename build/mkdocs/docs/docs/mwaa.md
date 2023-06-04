<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mwaa</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AmazonMWAA

### Description

Amazon Managed Workflows for Apache Airflow

This section contains the Amazon Managed Workflows for Apache Airflow
(MWAA) API reference documentation. For more information, see [What Is
Amazon
MWAA?](https://docs.aws.amazon.com/mwaa/latest/userguide/what-is-mwaa.html).

**Endpoints**

-   `⁠api.airflow.{region}.amazonaws.com⁠` - This endpoint is used for
    environment management.

    -   `create_environment`

    -   `delete_environment`

    -   `get_environment`

    -   `list_environments`

    -   `list_tags_for_resource`

    -   `tag_resource`

    -   `untag_resource`

    -   `update_environment`

-   `⁠env.airflow.{region}.amazonaws.com⁠` - This endpoint is used to
    operate the Airflow environment.

    -   `create_cli_token`

    -   `create_web_login_token`

-   `⁠ops.airflow.{region}.amazonaws.com⁠` - This endpoint is used to push
    environment metrics that track environment health.

    -   `publish_metrics`

**Regions**

For a list of regions that Amazon MWAA supports, see [Region
availability](https://docs.aws.amazon.com/mwaa/latest/userguide/what-is-mwaa.html#regions-mwaa)
in the *Amazon MWAA User Guide*.

### Usage

    mwaa(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="mwaa_:_config">config</code></td>
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

    svc <- mwaa(
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
<td style="text-align: left;"><a href="../mwaa_create_cli_token/"> create_cli_token </a></td>
<td style="text-align: left;">Creates a CLI token for the Airflow
CLI</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../mwaa_create_environment/"> create_environment </a></td>
<td style="text-align: left;">Creates an Amazon Managed Workflows for
Apache Airflow (MWAA) environment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../mwaa_create_web_login_token/"> create_web_login_token </a></td>
<td style="text-align: left;">Creates a web login token for the Airflow
Web UI</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../mwaa_delete_environment/"> delete_environment </a></td>
<td style="text-align: left;">Deletes an Amazon Managed Workflows for
Apache Airflow (MWAA) environment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../mwaa_get_environment/"> get_environment </a></td>
<td style="text-align: left;">Describes an Amazon Managed Workflows for
Apache Airflow (MWAA) environment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../mwaa_list_environments/"> list_environments </a></td>
<td style="text-align: left;">Lists the Amazon Managed Workflows for
Apache Airflow (MWAA) environments</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../mwaa_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists the key-value tag pairs associated
to the Amazon Managed Workflows for Apache Airflow (MWAA)
environment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../mwaa_publish_metrics/"> publish_metrics </a></td>
<td style="text-align: left;">Internal only</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../mwaa_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Associates key-value tag pairs to your
Amazon Managed Workflows for Apache Airflow (MWAA) environment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../mwaa_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes key-value tag pairs associated to
your Amazon Managed Workflows for Apache Airflow (MWAA) environment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../mwaa_update_environment/"> update_environment </a></td>
<td style="text-align: left;">Updates an Amazon Managed Workflows for
Apache Airflow (MWAA) environment</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- mwaa()
    svc$create_cli_token(
      Foo = 123
    )

    ## End(Not run)
