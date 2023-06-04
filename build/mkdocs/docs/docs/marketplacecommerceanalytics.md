<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>marketplacecommerceanalytics</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Marketplace Commerce Analytics

### Description

Provides AWS Marketplace business intelligence data on-demand.

### Usage

    marketplacecommerceanalytics(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="marketplacecommerceanalytics_:_config">config</code></td>
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

    svc <- marketplacecommerceanalytics(
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
<td style="text-align: left;"><a href="../marketplacecommerceanalytics_generate_data_set/"> generate_data_set </a></td>
<td style="text-align: left;">Given a data set type and data set
publication date, asynchronously publishes the requested data set to the
specified S3 bucket and notifies the specified SNS topic once the data
is available</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../marketplacecommerceanalytics_start_support_data_export/"> start_support_data_export </a></td>
<td style="text-align: left;">Given a data set type and a from date,
asynchronously publishes the requested customer support data to the
specified S3 bucket and notifies the specified SNS topic once the data
is available</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- marketplacecommerceanalytics()
    svc$generate_data_set(
      Foo = 123
    )

    ## End(Not run)
