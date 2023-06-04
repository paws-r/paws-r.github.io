<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Account

### Description

Operations for Amazon Web Services Account Management

### Usage

    account(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="account_:_config">config</code></td>
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

    svc <- account(
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
<td style="text-align: left;"><a href="../account_delete_alternate_contact/"> delete_alternate_contact </a></td>
<td style="text-align: left;">Deletes the specified alternate contact
from an Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../account_disable_region/"> disable_region </a></td>
<td style="text-align: left;">Disables (opts-out) a particular Region
for an account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../account_enable_region/"> enable_region </a></td>
<td style="text-align: left;">Enables (opts-in) a particular Region for
an account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../account_get_alternate_contact/"> get_alternate_contact </a></td>
<td style="text-align: left;">Retrieves the specified alternate contact
attached to an Amazon Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../account_get_contact_information/"> get_contact_information </a></td>
<td style="text-align: left;">Retrieves the primary contact information
of an Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../account_get_region_opt_status/"> get_region_opt_status </a></td>
<td style="text-align: left;">Retrieves the opt-in status of a
particular Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../account_list_regions/"> list_regions </a></td>
<td style="text-align: left;">Lists all the Regions for a given account
and their respective opt-in statuses</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../account_put_alternate_contact/"> put_alternate_contact </a></td>
<td style="text-align: left;">Modifies the specified alternate contact
attached to an Amazon Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../account_put_contact_information/"> put_contact_information </a></td>
<td style="text-align: left;">Updates the primary contact information of
an Amazon Web Services account</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- account()
    svc$delete_alternate_contact(
      Foo = 123
    )

    ## End(Not run)
