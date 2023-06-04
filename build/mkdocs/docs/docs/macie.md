<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Macie

### Description

Amazon Macie Classic

Amazon Macie Classic has been discontinued and is no longer available.

A new Amazon Macie is now available with significant design improvements
and additional features, at a lower price and in most Amazon Web
Services Regions. We encourage you to take advantage of the new and
improved features, and benefit from the reduced cost. To learn about
features and pricing for the new Macie, see [Amazon
Macie](https://aws.amazon.com/macie/). To learn how to use the new
Macie, see the [Amazon Macie User
Guide](https://docs.aws.amazon.com/macie/latest/user/what-is-macie.html).

### Usage

    macie(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="macie_:_config">config</code></td>
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

    svc <- macie(
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
<td style="text-align: left;"><a href="../macie_associate_member_account/"> associate_member_account </a></td>
<td style="text-align: left;">(Discontinued) Associates a specified
Amazon Web Services account with Amazon Macie Classic as a member
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie_associate_s3_resources/"> associate_s3_resources </a></td>
<td style="text-align: left;">(Discontinued) Associates specified S3
resources with Amazon Macie Classic for monitoring and data
classification</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie_disassociate_member_account/"> disassociate_member_account </a></td>
<td style="text-align: left;">(Discontinued) Removes the specified
member account from Amazon Macie Classic</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie_disassociate_s3_resources/"> disassociate_s3_resources </a></td>
<td style="text-align: left;">(Discontinued) Removes specified S3
resources from being monitored by Amazon Macie Classic</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie_list_member_accounts/"> list_member_accounts </a></td>
<td style="text-align: left;">(Discontinued) Lists all Amazon Macie
Classic member accounts for the current Macie Classic administrator
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../macie_list_s3_resources/"> list_s3_resources </a></td>
<td style="text-align: left;">(Discontinued) Lists all the S3 resources
associated with Amazon Macie Classic</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../macie_update_s3_resources/"> update_s3_resources </a></td>
<td style="text-align: left;">(Discontinued) Updates the classification
types for the specified S3 resources</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- macie()
    svc$associate_member_account(
      Foo = 123
    )

    ## End(Not run)
