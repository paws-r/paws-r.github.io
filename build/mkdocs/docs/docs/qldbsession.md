<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>qldbsession</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon QLDB Session

### Description

The transactional data APIs for Amazon QLDB

Instead of interacting directly with this API, we recommend using the
QLDB driver or the QLDB shell to execute data transactions on a ledger.

-   If you are working with an AWS SDK, use the QLDB driver. The driver
    provides a high-level abstraction layer above this *QLDB Session*
    data plane and manages `send_command` API calls for you. For
    information and a list of supported programming languages, see
    [Getting started with the
    driver](https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-driver.html)
    in the *Amazon QLDB Developer Guide*.

-   If you are working with the AWS Command Line Interface (AWS CLI),
    use the QLDB shell. The shell is a command line interface that uses
    the QLDB driver to interact with a ledger. For information, see
    [Accessing Amazon QLDB using the QLDB
    shell](https://docs.aws.amazon.com/qldb/latest/developerguide/data-shell.html).

### Usage

    qldbsession(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="qldbsession_:_config">config</code></td>
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

    svc <- qldbsession(
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
<td style="text-align: left;"><a href="../qldbsession_send_command/"> send_command </a></td>
<td style="text-align: left;">Sends a command to an Amazon QLDB
ledger</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- qldbsession()
    svc$send_command(
      Foo = 123
    )

    ## End(Not run)
