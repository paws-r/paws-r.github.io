<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivschat</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Interactive Video Service Chat

### Description

**Introduction**

The Amazon IVS Chat control-plane API enables you to create and manage
Amazon IVS Chat resources. You also need to integrate with the [Amazon
IVS Chat Messaging
API](https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/), to
enable users to interact with chat rooms in real time.

The API is an AWS regional service. For a list of supported regions and
Amazon IVS Chat HTTPS service endpoints, see the Amazon IVS Chat
information on the [Amazon IVS
page](https://docs.aws.amazon.com/general/latest/gr/ivs.html) in the
*AWS General Reference*.

**Notes on terminology:**

-   You create service applications using the Amazon IVS Chat API. We
    refer to these as *applications*.

-   You create front-end client applications (browser and Android/iOS
    apps) using the Amazon IVS Chat Messaging API. We refer to these as
    *clients*.

**Resources**

The following resources are part of Amazon IVS Chat:

-   **LoggingConfiguration** — A configuration that allows customers to
    store and record sent messages in a chat room. See the Logging
    Configuration endpoints for more information.

-   **Room** — The central Amazon IVS Chat resource through which
    clients connect to and exchange chat messages. See the Room
    endpoints for more information.

**Tagging**

A *tag* is a metadata label that you assign to an AWS resource. A tag
comprises a *key* and a *value*, both set by you. For example, you might
set a tag as `topic:nature` to label a particular video category. See
[Tagging AWS
Resources](https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html)
for more information, including restrictions that apply to tags and "Tag
naming limits and requirements"; Amazon IVS Chat has no service-specific
constraints beyond what is documented there.

Tags can help you identify and organize your AWS resources. For example,
you can use the same tag for different resources to indicate that they
are related. You can also use tags to manage access (see [Access
Tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html)).

The Amazon IVS Chat API has these tag-related endpoints: `tag_resource`,
`untag_resource`, and `list_tags_for_resource`. The following resource
supports tagging: Room.

At most 50 tags can be applied to a resource.

**API Access Security**

Your Amazon IVS Chat applications (service applications and clients)
must be authenticated and authorized to access Amazon IVS Chat
resources. Note the differences between these concepts:

-   *Authentication* is about verifying identity. Requests to the Amazon
    IVS Chat API must be signed to verify your identity.

-   *Authorization* is about granting permissions. Your IAM roles need
    to have permissions for Amazon IVS Chat API requests.

Users (viewers) connect to a room using secure access tokens that you
create using the `create_chat_token` endpoint through the AWS SDK. You
call CreateChatToken for every user’s chat session, passing identity and
authorization information about the user.

**Signing API Requests**

HTTP API requests must be signed with an AWS SigV4 signature using your
AWS security credentials. The AWS Command Line Interface (CLI) and the
AWS SDKs take care of signing the underlying API calls for you. However,
if your application calls the Amazon IVS Chat HTTP API directly, it’s
your responsibility to sign the requests.

You generate a signature using valid AWS credentials for an IAM role
that has permission to perform the requested action. For example,
DeleteMessage requests must be made using an IAM role that has the
`ivschat:DeleteMessage` permission.

For more information:

-   Authentication and generating signatures — See [Authenticating
    Requests (Amazon Web Services Signature Version
    4)](https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html)
    in the *Amazon Web Services General Reference*.

-   Managing Amazon IVS permissions — See [Identity and Access
    Management](https://docs.aws.amazon.com/ivs/latest/userguide/security-iam.html)
    on the Security page of the *Amazon IVS User Guide*.

**Amazon Resource Names (ARNs)**

ARNs uniquely identify AWS resources. An ARN is required when you need
to specify a resource unambiguously across all of AWS, such as in IAM
policies and API calls. For more information, see [Amazon Resource
Names](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html)
in the *AWS General Reference*.

**Messaging Endpoints**

-   `delete_message` — Sends an event to a specific room which directs
    clients to delete a specific message; that is, unrender it from view
    and delete it from the client’s chat history. This event’s
    `EventName` is `aws:DELETE_MESSAGE`. This replicates the
    [DeleteMessage](https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-deletemessage-publish.html)
    WebSocket operation in the Amazon IVS Chat Messaging API.

-   `disconnect_user` — Disconnects all connections using a specified
    user ID from a room. This replicates the
    [DisconnectUser](https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-disconnectuser-publish.html)
    WebSocket operation in the Amazon IVS Chat Messaging API.

-   `send_event` — Sends an event to a room. Use this within your
    application’s business logic to send events to clients of a room;
    e.g., to notify clients to change the way the chat UI is rendered.

**Chat Token Endpoint**

-   `create_chat_token` — Creates an encrypted token that is used by a
    chat participant to establish an individual WebSocket chat
    connection to a room. When the token is used to connect to chat, the
    connection is valid for the session duration specified in the
    request. The token becomes invalid at the token-expiration timestamp
    included in the response.

**Room Endpoints**

-   `create_room` — Creates a room that allows clients to connect and
    pass messages.

-   `delete_room` — Deletes the specified room.

-   `get_room` — Gets the specified room.

-   `list_rooms` — Gets summary information about all your rooms in the
    AWS region where the API request is processed.

-   `update_room` — Updates a room’s configuration.

**Logging Configuration Endpoints**

-   `create_logging_configuration` — Creates a logging configuration
    that allows clients to store and record sent messages.

-   `delete_logging_configuration` — Deletes the specified logging
    configuration.

-   `get_logging_configuration` — Gets the specified logging
    configuration.

-   `list_logging_configurations` — Gets summary information about all
    your logging configurations in the AWS region where the API request
    is processed.

-   `update_logging_configuration` — Updates a specified logging
    configuration.

**Tags Endpoints**

-   `list_tags_for_resource` — Gets information about AWS tags for the
    specified ARN.

-   `tag_resource` — Adds or updates tags for the AWS resource with the
    specified ARN.

-   `untag_resource` — Removes tags from the resource with the specified
    ARN.

All the above are HTTP operations. There is a separate *messaging* API
for managing Chat resources; see the [Amazon IVS Chat Messaging API
Reference](https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/).

### Usage

    ivschat(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ivschat_:_config">config</code></td>
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

    svc <- ivschat(
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
<td style="text-align: left;"><a href="../ivschat_create_chat_token/"> create_chat_token </a></td>
<td style="text-align: left;">Creates an encrypted token that is used by
a chat participant to establish an individual WebSocket chat connection
to a room</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ivschat_create_logging_configuration/"> create_logging_configuration </a></td>
<td style="text-align: left;">Creates a logging configuration that
allows clients to store and record sent messages</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ivschat_create_room/"> create_room </a></td>
<td style="text-align: left;">Creates a room that allows clients to
connect and pass messages</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ivschat_delete_logging_configuration/"> delete_logging_configuration </a></td>
<td style="text-align: left;">Deletes the specified logging
configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ivschat_delete_message/"> delete_message </a></td>
<td style="text-align: left;">Sends an event to a specific room which
directs clients to delete a specific message; that is, unrender it from
view and delete it from the client’s chat history</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ivschat_delete_room/"> delete_room </a></td>
<td style="text-align: left;">Deletes the specified room</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ivschat_disconnect_user/"> disconnect_user </a></td>
<td style="text-align: left;">Disconnects all connections using a
specified user ID from a room</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ivschat_get_logging_configuration/"> get_logging_configuration </a></td>
<td style="text-align: left;">Gets the specified logging
configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ivschat_get_room/"> get_room </a></td>
<td style="text-align: left;">Gets the specified room</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ivschat_list_logging_configurations/"> list_logging_configurations </a></td>
<td style="text-align: left;">Gets summary information about all your
logging configurations in the AWS region where the API request is
processed</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ivschat_list_rooms/"> list_rooms </a></td>
<td style="text-align: left;">Gets summary information about all your
rooms in the AWS region where the API request is processed</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ivschat_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Gets information about AWS tags for the
specified ARN</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ivschat_send_event/"> send_event </a></td>
<td style="text-align: left;">Sends an event to a room</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ivschat_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds or updates tags for the AWS resource
with the specified ARN</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ivschat_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes tags from the resource with the
specified ARN</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ivschat_update_logging_configuration/"> update_logging_configuration </a></td>
<td style="text-align: left;">Updates a specified logging
configuration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ivschat_update_room/"> update_room </a></td>
<td style="text-align: left;">Updates a room’s configuration</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- ivschat()
    svc$create_chat_token(
      Foo = 123
    )

    ## End(Not run)
