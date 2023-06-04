<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resourcegroupstaggingapi</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Resource Groups Tagging API

### Description

Resource Groups Tagging API

### Usage

    resourcegroupstaggingapi(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="resourcegroupstaggingapi_:_config">config</code></td>
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

    svc <- resourcegroupstaggingapi(
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
<td style="text-align: left;"><a href="../resourcegroupstaggingapi_describe_report_creation/"> describe_report_creation </a></td>
<td style="text-align: left;">Describes the status of the
StartReportCreation operation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resourcegroupstaggingapi_get_compliance_summary/"> get_compliance_summary </a></td>
<td style="text-align: left;">Returns a table that shows counts of
resources that are noncompliant with their tag policies</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../resourcegroupstaggingapi_get_resources/"> get_resources </a></td>
<td style="text-align: left;">Returns all the tagged or previously
tagged resources that are located in the specified Amazon Web Services
Region for the account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resourcegroupstaggingapi_get_tag_keys/"> get_tag_keys </a></td>
<td style="text-align: left;">Returns all tag keys currently in use in
the specified Amazon Web Services Region for the calling account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../resourcegroupstaggingapi_get_tag_values/"> get_tag_values </a></td>
<td style="text-align: left;">Returns all tag values for the specified
key that are used in the specified Amazon Web Services Region for the
calling account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resourcegroupstaggingapi_start_report_creation/"> start_report_creation </a></td>
<td style="text-align: left;">Generates a report that lists all tagged
resources in the accounts across your organization and tells whether
each resource is compliant with the effective tag policy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../resourcegroupstaggingapi_tag_resources/"> tag_resources </a></td>
<td style="text-align: left;">Applies one or more tags to the specified
resources</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../resourcegroupstaggingapi_untag_resources/"> untag_resources </a></td>
<td style="text-align: left;">Removes the specified tags from the
specified resources</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- resourcegroupstaggingapi()
    svc$describe_report_creation(
      Foo = 123
    )

    ## End(Not run)
