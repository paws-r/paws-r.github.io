<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sqs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Simple Queue Service

### Description

Welcome to the *Amazon SQS API Reference*.

Amazon SQS is a reliable, highly-scalable hosted queue for storing
messages as they travel between applications or microservices. Amazon
SQS moves data between distributed application components and helps you
decouple these components.

For information on the permissions you need to use this API, see
[Identity and access
management](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-authentication-and-access-control.html)
in the *Amazon SQS Developer Guide.*

You can use [Amazon Web Services
SDKs](https://aws.amazon.com/developer/tools/#sdk) to access Amazon SQS
using your favorite programming language. The SDKs perform tasks such as
the following automatically:

-   Cryptographically sign your service requests

-   Retry requests

-   Handle error responses

**Additional information**

-   [Amazon SQS Product Page](https://aws.amazon.com/sqs/)

-   *Amazon SQS Developer Guide*

    -   [Making API
        Requests](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-making-api-requests-xml.html)

    -   [Amazon SQS Message
        Attributes](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-metadata.html#sqs-message-attributes)

    -   [Amazon SQS Dead-Letter
        Queues](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html)

-   [Amazon SQS in the *Command Line
    Interface*](https://docs.aws.amazon.com/cli/latest/reference/sqs/index.html)

-   *Amazon Web Services General Reference*

    -   [Regions and
        Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#sqs_region)

### Usage

    sqs(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sqs_:_config">config</code></td>
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

    svc <- sqs(
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
<td style="text-align: left;"><a href="../sqs_add_permission/"> add_permission </a></td>
<td style="text-align: left;">Adds a permission to a queue for a
specific principal</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sqs_change_message_visibility/"> change_message_visibility </a></td>
<td style="text-align: left;">Changes the visibility timeout of a
specified message in a queue to a new value</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sqs_change_message_visibility_batch/"> change_message_visibility_batch </a></td>
<td style="text-align: left;">Changes the visibility timeout of multiple
messages</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sqs_create_queue/"> create_queue </a></td>
<td style="text-align: left;">Creates a new standard or FIFO queue</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sqs_delete_message/"> delete_message </a></td>
<td style="text-align: left;">Deletes the specified message from the
specified queue</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sqs_delete_message_batch/"> delete_message_batch </a></td>
<td style="text-align: left;">Deletes up to ten messages from the
specified queue</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sqs_delete_queue/"> delete_queue </a></td>
<td style="text-align: left;">Deletes the queue specified by the
QueueUrl, regardless of the queue's contents</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sqs_get_queue_attributes/"> get_queue_attributes </a></td>
<td style="text-align: left;">Gets attributes for the specified
queue</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sqs_get_queue_url/"> get_queue_url </a></td>
<td style="text-align: left;">Returns the URL of an existing Amazon SQS
queue</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sqs_list_dead_letter_source_queues/"> list_dead_letter_source_queues </a></td>
<td style="text-align: left;">Returns a list of your queues that have
the RedrivePolicy queue attribute configured with a dead-letter
queue</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sqs_list_queues/"> list_queues </a></td>
<td style="text-align: left;">Returns a list of your queues in the
current region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sqs_list_queue_tags/"> list_queue_tags </a></td>
<td style="text-align: left;">List all cost allocation tags added to the
specified Amazon SQS queue</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sqs_purge_queue/"> purge_queue </a></td>
<td style="text-align: left;">Deletes the messages in a queue specified
by the QueueURL parameter</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sqs_receive_message/"> receive_message </a></td>
<td style="text-align: left;">Retrieves one or more messages (up to 10),
from the specified queue</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sqs_remove_permission/"> remove_permission </a></td>
<td style="text-align: left;">Revokes any permissions in the queue
policy that matches the specified Label parameter</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sqs_send_message/"> send_message </a></td>
<td style="text-align: left;">Delivers a message to the specified
queue</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sqs_send_message_batch/"> send_message_batch </a></td>
<td style="text-align: left;">Delivers up to ten messages to the
specified queue</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sqs_set_queue_attributes/"> set_queue_attributes </a></td>
<td style="text-align: left;">Sets the value of one or more queue
attributes</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sqs_tag_queue/"> tag_queue </a></td>
<td style="text-align: left;">Add cost allocation tags to the specified
Amazon SQS queue</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sqs_untag_queue/"> untag_queue </a></td>
<td style="text-align: left;">Remove cost allocation tags from the
specified Amazon SQS queue</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- sqs()
    svc$add_permission(
      Foo = 123
    )

    ## End(Not run)
