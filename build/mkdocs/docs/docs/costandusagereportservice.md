<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>costandusagereportservice</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Cost and Usage Report Service

### Description

The AWS Cost and Usage Report API enables you to programmatically
create, query, and delete AWS Cost and Usage report definitions.

AWS Cost and Usage reports track the monthly AWS costs and usage
associated with your AWS account. The report contains line items for
each unique combination of AWS product, usage type, and operation that
your AWS account uses. You can configure the AWS Cost and Usage report
to show only the data that you want, using the AWS Cost and Usage API.

Service Endpoint

The AWS Cost and Usage Report API provides the following endpoint:

-   cur.us-east-1.amazonaws.com

### Usage

    costandusagereportservice(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="costandusagereportservice_:_config">config</code></td>
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

    svc <- costandusagereportservice(
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
<td style="text-align: left;"><a href="../costandusagereportservice_delete_report_definition/"> delete_report_definition </a></td>
<td style="text-align: left;">Deletes the specified report</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../costandusagereportservice_describe_report_definitions/"> describe_report_definitions </a></td>
<td style="text-align: left;">Lists the AWS Cost and Usage reports
available to this account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../costandusagereportservice_modify_report_definition/"> modify_report_definition </a></td>
<td style="text-align: left;">Allows you to programatically update your
report preferences</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../costandusagereportservice_put_report_definition/"> put_report_definition </a></td>
<td style="text-align: left;">Creates a new report using the description
that you provide</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- costandusagereportservice()
    # The following example deletes the AWS Cost and Usage report named
    # ExampleReport.
    svc$delete_report_definition(
      ReportName = "ExampleReport"
    )

    ## End(Not run)
