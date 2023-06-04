<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sqs_receive_message</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves one or more messages (up to 10), from the specified queue

### Description

Retrieves one or more messages (up to 10), from the specified queue.
Using the `WaitTimeSeconds` parameter enables long-poll support. For
more information, see [Amazon SQS Long
Polling](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-short-and-long-polling.html#sqs-long-polling)
in the *Amazon SQS Developer Guide*.

Short poll is the default behavior where a weighted random set of
machines is sampled on a `receive_message` call. Thus, only the messages
on the sampled machines are returned. If the number of messages in the
queue is small (fewer than 1,000), you most likely get fewer messages
than you requested per `receive_message` call. If the number of messages
in the queue is extremely small, you might not receive any messages in a
particular `receive_message` response. If this happens, repeat the
request.

For each message returned, the response includes the following:

-   The message body.

-   An MD5 digest of the message body. For information about MD5, see
    [RFC1321](https://www.ietf.org/rfc/rfc1321.txt).

-   The `MessageId` you received when you sent the message to the queue.

-   The receipt handle.

-   The message attributes.

-   An MD5 digest of the message attributes.

The receipt handle is the identifier you must provide when deleting the
message. For more information, see [Queue and Message
Identifiers](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-message-identifiers.html)
in the *Amazon SQS Developer Guide*.

You can provide the `VisibilityTimeout` parameter in your request. The
parameter is applied to the messages that Amazon SQS returns in the
response. If you don't include the parameter, the overall visibility
timeout for the queue is used for the returned messages. For more
information, see [Visibility
Timeout](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html)
in the *Amazon SQS Developer Guide*.

A message that isn't deleted or a message whose visibility isn't
extended before the visibility timeout expires counts as a failed
receive. Depending on the configuration of the queue, the message might
be sent to the dead-letter queue.

In the future, new attributes might be added. If you write code that
calls this action, we recommend that you structure your code so that it
can handle new attributes gracefully.

### Usage

    sqs_receive_message(QueueUrl, AttributeNames, MessageAttributeNames,
      MaxNumberOfMessages, VisibilityTimeout, WaitTimeSeconds,
      ReceiveRequestAttemptId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sqs_receive_message_:_QueueUrl">QueueUrl</code></td>
<td><p>[required] The URL of the Amazon SQS queue from which messages
are received.</p>
<p>Queue URLs and names are case-sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="sqs_receive_message_:_AttributeNames">AttributeNames</code></td>
<td><p>A list of attributes that need to be returned along with each
message. These attributes include:</p>
<ul>
<li><p><code>All</code> – Returns all values.</p></li>
<li><p><code>ApproximateFirstReceiveTimestamp</code> – Returns the time
the message was first received from the queue (<a
href="https://en.wikipedia.org/wiki/Unix_time">epoch time</a> in
milliseconds).</p></li>
<li><p><code>ApproximateReceiveCount</code> – Returns the number of
times a message has been received across all queues but not
deleted.</p></li>
<li><p><code>AWSTraceHeader</code> – Returns the X-Ray trace header
string.</p></li>
<li><p><code>SenderId</code></p>
<ul>
<li><p>For an IAM user, returns the IAM user ID, for example
<code>ABCDEFGHI1JKLMNOPQ23R</code>.</p></li>
<li><p>For an IAM role, returns the IAM role ID, for example
<code>ABCDE1F2GH3I4JK5LMNOP:i-a123b456</code>.</p></li>
</ul></li>
<li><p><code>SentTimestamp</code> – Returns the time the message was
sent to the queue (<a
href="https://en.wikipedia.org/wiki/Unix_time">epoch time</a> in
milliseconds).</p></li>
<li><p><code>SqsManagedSseEnabled</code> – Enables server-side queue
encryption using SQS owned encryption keys. Only one server-side
encryption option is supported per queue (e.g. <a
href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-configure-sse-existing-queue.html">SSE-KMS</a>
or <a
href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-configure-sqs-sse-queue.html">SSE-SQS</a>).</p></li>
<li><p><code>MessageDeduplicationId</code> – Returns the value provided
by the producer that calls the <code>send_message</code>
action.</p></li>
<li><p><code>MessageGroupId</code> – Returns the value provided by the
producer that calls the <code>send_message</code> action. Messages with
the same <code>MessageGroupId</code> are returned in sequence.</p></li>
<li><p><code>SequenceNumber</code> – Returns the value provided by
Amazon SQS.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="sqs_receive_message_:_MessageAttributeNames">MessageAttributeNames</code></td>
<td><p>The name of the message attribute, where <em>N</em> is the
index.</p>
<ul>
<li><p>The name can contain alphanumeric characters and the underscore
(<code style="white-space: pre;">⁠_⁠</code>), hyphen (<code>-</code>), and
period (<code>.</code>).</p></li>
<li><p>The name is case-sensitive and must be unique among all attribute
names for the message.</p></li>
<li><p>The name must not start with AWS-reserved prefixes such as
<code>AWS.</code> or <code>Amazon.</code> (or any casing
variants).</p></li>
<li><p>The name must not start or end with a period (<code>.</code>),
and it should not have periods in succession (<code>..</code>).</p></li>
<li><p>The name can be up to 256 characters long.</p></li>
</ul>
<p>When using <code>receive_message</code>, you can send a list of
attribute names to receive, or you can return all of the attributes by
specifying <code>All</code> or <code style="white-space: pre;">⁠.*⁠</code>
in your request. You can also use all message attributes starting with a
prefix, for example <code
style="white-space: pre;">⁠bar.*⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="sqs_receive_message_:_MaxNumberOfMessages">MaxNumberOfMessages</code></td>
<td><p>The maximum number of messages to return. Amazon SQS never
returns more messages than this value (however, fewer messages might be
returned). Valid values: 1 to 10. Default: 1.</p></td>
</tr>
<tr class="odd">
<td><code
id="sqs_receive_message_:_VisibilityTimeout">VisibilityTimeout</code></td>
<td><p>The duration (in seconds) that the received messages are hidden
from subsequent retrieve requests after being retrieved by a
<code>receive_message</code> request.</p></td>
</tr>
<tr class="even">
<td><code
id="sqs_receive_message_:_WaitTimeSeconds">WaitTimeSeconds</code></td>
<td><p>The duration (in seconds) for which the call waits for a message
to arrive in the queue before returning. If a message is available, the
call returns sooner than <code>WaitTimeSeconds</code>. If no messages
are available and the wait time expires, the call returns successfully
with an empty list of messages.</p>
<p>To avoid HTTP errors, ensure that the HTTP response timeout for
<code>receive_message</code> requests is longer than the
<code>WaitTimeSeconds</code> parameter. For example, with the Java SDK,
you can set HTTP transport settings using the <a
href="https://sdk.amazonaws.com/java/api/latest/software/amazon/awssdk/http/nio/netty/NettyNioAsyncHttpClient.html">NettyNioAsyncHttpClient</a>
for asynchronous clients, or the <a
href="https://sdk.amazonaws.com/java/api/latest/software/amazon/awssdk/http/apache/ApacheHttpClient.html">ApacheHttpClient</a>
for synchronous clients.</p></td>
</tr>
<tr class="odd">
<td><code
id="sqs_receive_message_:_ReceiveRequestAttemptId">ReceiveRequestAttemptId</code></td>
<td><p>This parameter applies only to FIFO (first-in-first-out)
queues.</p>
<p>The token used for deduplication of <code>receive_message</code>
calls. If a networking issue occurs after a <code>receive_message</code>
action, and instead of a response you receive a generic error, it is
possible to retry the same action with an identical
<code>ReceiveRequestAttemptId</code> to retrieve the same set of
messages, even if their visibility timeout has not yet expired.</p>
<ul>
<li><p>You can use <code>ReceiveRequestAttemptId</code> only for 5
minutes after a <code>receive_message</code> action.</p></li>
<li><p>When you set <code>FifoQueue</code>, a caller of the
<code>receive_message</code> action can provide a
<code>ReceiveRequestAttemptId</code> explicitly.</p></li>
<li><p>If a caller of the <code>receive_message</code> action doesn't
provide a <code>ReceiveRequestAttemptId</code>, Amazon SQS generates a
<code>ReceiveRequestAttemptId</code>.</p></li>
<li><p>It is possible to retry the <code>receive_message</code> action
with the same <code>ReceiveRequestAttemptId</code> if none of the
messages have been modified (deleted or had their visibility
changes).</p></li>
<li><p>During a visibility timeout, subsequent calls with the same
<code>ReceiveRequestAttemptId</code> return the same messages and
receipt handles. If a retry occurs within the deduplication interval, it
resets the visibility timeout. For more information, see <a
href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html">Visibility
Timeout</a> in the <em>Amazon SQS Developer Guide</em>.</p>
<p>If a caller of the <code>receive_message</code> action still
processes messages when the visibility timeout expires and messages
become visible, another worker consuming from the same queue can receive
the same messages and therefore process duplicates. Also, if a consumer
whose message processing time is longer than the visibility timeout
tries to delete the processed messages, the action fails with an
error.</p>
<p>To mitigate this effect, ensure that your application observes a safe
threshold before the visibility timeout expires and extend the
visibility timeout as necessary.</p></li>
<li><p>While messages with a particular <code>MessageGroupId</code> are
invisible, no more messages belonging to the same
<code>MessageGroupId</code> are returned until the visibility timeout
expires. You can still receive messages with another
<code>MessageGroupId</code> as long as it is also visible.</p></li>
<li><p>If a caller of <code>receive_message</code> can't track the
<code>ReceiveRequestAttemptId</code>, no retries work until the original
visibility timeout expires. As a result, delays might occur but the
messages in the queue remain in a strict order.</p></li>
</ul>
<p>The maximum length of <code>ReceiveRequestAttemptId</code> is 128
characters. <code>ReceiveRequestAttemptId</code> can contain
alphanumeric characters (<code>a-z</code>, <code>A-Z</code>,
<code>0-9</code>) and punctuation (<code
style="white-space: pre;">⁠!\"#$%&amp;\'()*+,-./:;&lt;=&gt;?@[\]^_\`{|}~⁠</code>).</p>
<p>For best practices of using <code>ReceiveRequestAttemptId</code>, see
<a
href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/using-receiverequestattemptid-request-parameter.html">Using
the ReceiveRequestAttemptId Request Parameter</a> in the <em>Amazon SQS
Developer Guide</em>.</p>
<p>[]: R:%5C [Using the ReceiveRequestAttemptId Request Parameter]:
R:Using%20the%0AReceiveRequestAttemptId%20Request%0AParameter</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Messages = list(
        list(
          MessageId = "string",
          ReceiptHandle = "string",
          MD5OfBody = "string",
          Body = "string",
          Attributes = list(
            "string"
          ),
          MD5OfMessageAttributes = "string",
          MessageAttributes = list(
            list(
              StringValue = "string",
              BinaryValue = raw,
              StringListValues = list(
                "string"
              ),
              BinaryListValues = list(
                raw
              ),
              DataType = "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$receive_message(
      QueueUrl = "string",
      AttributeNames = list(
        "All"|"Policy"|"VisibilityTimeout"|"MaximumMessageSize"|"MessageRetentionPeriod"|"ApproximateNumberOfMessages"|"ApproximateNumberOfMessagesNotVisible"|"CreatedTimestamp"|"LastModifiedTimestamp"|"QueueArn"|"ApproximateNumberOfMessagesDelayed"|"DelaySeconds"|"ReceiveMessageWaitTimeSeconds"|"RedrivePolicy"|"FifoQueue"|"ContentBasedDeduplication"|"KmsMasterKeyId"|"KmsDataKeyReusePeriodSeconds"|"DeduplicationScope"|"FifoThroughputLimit"|"RedriveAllowPolicy"|"SqsManagedSseEnabled"
      ),
      MessageAttributeNames = list(
        "string"
      ),
      MaxNumberOfMessages = 123,
      VisibilityTimeout = 123,
      WaitTimeSeconds = 123,
      ReceiveRequestAttemptId = "string"
    )
