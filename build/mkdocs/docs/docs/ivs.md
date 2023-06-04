<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Interactive Video Service

### Description

**Introduction**

The Amazon Interactive Video Service (IVS) API is REST compatible, using
a standard HTTP API and an Amazon Web Services EventBridge event stream
for responses. JSON is used for both requests and responses, including
errors.

The API is an Amazon Web Services regional service. For a list of
supported regions and Amazon IVS HTTPS service endpoints, see the
[Amazon IVS
page](https://docs.aws.amazon.com/general/latest/gr/ivs.html) in the
*Amazon Web Services General Reference*.

\*All API request parameters and URLs are case sensitive. \*

For a summary of notable documentation changes in each release, see
[Document
History](https://docs.aws.amazon.com/ivs/latest/userguide/doc-history.html).

**Allowed Header Values**

-   `⁠Accept:⁠` application/json

-   `⁠Accept-Encoding:⁠` gzip, deflate

-   `⁠Content-Type:⁠`application/json

**Resources**

The following resources contain information about your IVS live stream
(see [Getting Started with Amazon
IVS](https://docs.aws.amazon.com/ivs/latest/userguide/getting-started.html)):

-   **Channel** — Stores configuration data related to your live stream.
    You first create a channel and then use the channel’s stream key to
    start your live stream. See the Channel endpoints for more
    information.

-   **Stream key** — An identifier assigned by Amazon IVS when you
    create a channel, which is then used to authorize streaming. See the
    StreamKey endpoints for more information. *Treat the stream key like
    a secret, since it allows anyone to stream to the channel.*

-   **Playback key pair** — Video playback may be restricted using
    playback-authorization tokens, which use public-key encryption. A
    playback key pair is the public-private pair of keys used to sign
    and validate the playback-authorization token. See the
    PlaybackKeyPair endpoints for more information.

-   **Recording configuration** — Stores configuration related to
    recording a live stream and where to store the recorded content.
    Multiple channels can reference the same recording configuration.
    See the Recording Configuration endpoints for more information.

**Tagging**

A *tag* is a metadata label that you assign to an Amazon Web Services
resource. A tag comprises a *key* and a *value*, both set by you. For
example, you might set a tag as `topic:nature` to label a particular
video category. See [Tagging Amazon Web Services
Resources](https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html)
for more information, including restrictions that apply to tags and "Tag
naming limits and requirements"; Amazon IVS has no service-specific
constraints beyond what is documented there.

Tags can help you identify and organize your Amazon Web Services
resources. For example, you can use the same tag for different resources
to indicate that they are related. You can also use tags to manage
access (see [Access
Tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html)).

The Amazon IVS API has these tag-related endpoints: `tag_resource`,
`untag_resource`, and `list_tags_for_resource`. The following resources
support tagging: Channels, Stream Keys, Playback Key Pairs, and
Recording Configurations.

At most 50 tags can be applied to a resource.

**Authentication versus Authorization**

Note the differences between these concepts:

-   *Authentication* is about verifying identity. You need to be
    authenticated to sign Amazon IVS API requests.

-   *Authorization* is about granting permissions. Your IAM roles need
    to have permissions for Amazon IVS API requests. In addition,
    authorization is needed to view [Amazon IVS private
    channels](https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html).
    (Private channels are channels that are enabled for "playback
    authorization.")

**Authentication**

All Amazon IVS API requests must be authenticated with a signature. The
Amazon Web Services Command-Line Interface (CLI) and Amazon IVS Player
SDKs take care of signing the underlying API calls for you. However, if
your application calls the Amazon IVS API directly, it’s your
responsibility to sign the requests.

You generate a signature using valid Amazon Web Services credentials
that have permission to perform the requested action. For example, you
must sign PutMetadata requests with a signature generated from a user
account that has the `ivs:PutMetadata` permission.

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

**Channel Endpoints**

-   `create_channel` — Creates a new channel and an associated stream
    key to start streaming.

-   `get_channel` — Gets the channel configuration for the specified
    channel ARN.

-   `batch_get_channel` — Performs `get_channel` on multiple ARNs
    simultaneously.

-   `list_channels` — Gets summary information about all channels in
    your account, in the Amazon Web Services region where the API
    request is processed. This list can be filtered to match a specified
    name or recording-configuration ARN. Filters are mutually exclusive
    and cannot be used together. If you try to use both filters, you
    will get an error (409 Conflict Exception).

-   `update_channel` — Updates a channel's configuration. This does not
    affect an ongoing stream of this channel. You must stop and restart
    the stream for the changes to take effect.

-   `delete_channel` — Deletes the specified channel.

**StreamKey Endpoints**

-   `create_stream_key` — Creates a stream key, used to initiate a
    stream, for the specified channel ARN.

-   `get_stream_key` — Gets stream key information for the specified
    ARN.

-   `batch_get_stream_key` — Performs `get_stream_key` on multiple ARNs
    simultaneously.

-   `list_stream_keys` — Gets summary information about stream keys for
    the specified channel.

-   `delete_stream_key` — Deletes the stream key for the specified ARN,
    so it can no longer be used to stream.

**Stream Endpoints**

-   `get_stream` — Gets information about the active (live) stream on a
    specified channel.

-   `get_stream_session` — Gets metadata on a specified stream.

-   `list_streams` — Gets summary information about live streams in your
    account, in the Amazon Web Services region where the API request is
    processed.

-   `list_stream_sessions` — Gets a summary of current and previous
    streams for a specified channel in your account, in the AWS region
    where the API request is processed.

-   `stop_stream` — Disconnects the incoming RTMPS stream for the
    specified channel. Can be used in conjunction with
    `delete_stream_key` to prevent further streaming to a channel.

-   `put_metadata` — Inserts metadata into the active stream of the
    specified channel. At most 5 requests per second per channel are
    allowed, each with a maximum 1 KB payload. (If 5 TPS is not
    sufficient for your needs, we recommend batching your data into a
    single PutMetadata call.) At most 155 requests per second per
    account are allowed.

**PlaybackKeyPair Endpoints**

For more information, see [Setting Up Private
Channels](https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html)
in the *Amazon IVS User Guide*.

-   `import_playback_key_pair` — Imports the public portion of a new key
    pair and returns its `arn` and `fingerprint`. The `privateKey` can
    then be used to generate viewer authorization tokens, to grant
    viewers access to private channels (channels enabled for playback
    authorization).

-   `get_playback_key_pair` — Gets a specified playback authorization
    key pair and returns the `arn` and `fingerprint`. The `privateKey`
    held by the caller can be used to generate viewer authorization
    tokens, to grant viewers access to private channels.

-   `list_playback_key_pairs` — Gets summary information about playback
    key pairs.

-   `delete_playback_key_pair` — Deletes a specified authorization key
    pair. This invalidates future viewer tokens generated using the key
    pair’s `privateKey`.

**RecordingConfiguration Endpoints**

-   `create_recording_configuration` — Creates a new recording
    configuration, used to enable recording to Amazon S3.

-   `get_recording_configuration` — Gets the recording-configuration
    metadata for the specified ARN.

-   `list_recording_configurations` — Gets summary information about all
    recording configurations in your account, in the Amazon Web Services
    region where the API request is processed.

-   `delete_recording_configuration` — Deletes the recording
    configuration for the specified ARN.

**Amazon Web Services Tags Endpoints**

-   `tag_resource` — Adds or updates tags for the Amazon Web Services
    resource with the specified ARN.

-   `untag_resource` — Removes tags from the resource with the specified
    ARN.

-   `list_tags_for_resource` — Gets information about Amazon Web
    Services tags for the specified ARN.

### Usage

    ivs(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ivs_:_config">config</code></td>
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

    svc <- ivs(
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
<td style="text-align: left;"><a href="../ivs_batch_get_channel/"> batch_get_channel </a></td>
<td style="text-align: left;">Performs GetChannel on multiple ARNs
simultaneously</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ivs_batch_get_stream_key/"> batch_get_stream_key </a></td>
<td style="text-align: left;">Performs GetStreamKey on multiple ARNs
simultaneously</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ivs_create_channel/"> create_channel </a></td>
<td style="text-align: left;">Creates a new channel and an associated
stream key to start streaming</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ivs_create_recording_configuration/"> create_recording_configuration </a></td>
<td style="text-align: left;">Creates a new recording configuration,
used to enable recording to Amazon S3</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ivs_create_stream_key/"> create_stream_key </a></td>
<td style="text-align: left;">Creates a stream key, used to initiate a
stream, for the specified channel ARN</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ivs_delete_channel/"> delete_channel </a></td>
<td style="text-align: left;">Deletes the specified channel and its
associated stream keys</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ivs_delete_playback_key_pair/"> delete_playback_key_pair </a></td>
<td style="text-align: left;">Deletes a specified authorization key
pair</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ivs_delete_recording_configuration/"> delete_recording_configuration </a></td>
<td style="text-align: left;">Deletes the recording configuration for
the specified ARN</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ivs_delete_stream_key/"> delete_stream_key </a></td>
<td style="text-align: left;">Deletes the stream key for the specified
ARN, so it can no longer be used to stream</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ivs_get_channel/"> get_channel </a></td>
<td style="text-align: left;">Gets the channel configuration for the
specified channel ARN</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ivs_get_playback_key_pair/"> get_playback_key_pair </a></td>
<td style="text-align: left;">Gets a specified playback authorization
key pair and returns the arn and fingerprint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ivs_get_recording_configuration/"> get_recording_configuration </a></td>
<td style="text-align: left;">Gets the recording configuration for the
specified ARN</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ivs_get_stream/"> get_stream </a></td>
<td style="text-align: left;">Gets information about the active (live)
stream on a specified channel</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ivs_get_stream_key/"> get_stream_key </a></td>
<td style="text-align: left;">Gets stream-key information for a
specified ARN</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ivs_get_stream_session/"> get_stream_session </a></td>
<td style="text-align: left;">Gets metadata on a specified stream</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ivs_import_playback_key_pair/"> import_playback_key_pair </a></td>
<td style="text-align: left;">Imports the public portion of a new key
pair and returns its arn and fingerprint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ivs_list_channels/"> list_channels </a></td>
<td style="text-align: left;">Gets summary information about all
channels in your account, in the Amazon Web Services region where the
API request is processed</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ivs_list_playback_key_pairs/"> list_playback_key_pairs </a></td>
<td style="text-align: left;">Gets summary information about playback
key pairs</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ivs_list_recording_configurations/"> list_recording_configurations </a></td>
<td style="text-align: left;">Gets summary information about all
recording configurations in your account, in the Amazon Web Services
region where the API request is processed</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ivs_list_stream_keys/"> list_stream_keys </a></td>
<td style="text-align: left;">Gets summary information about stream keys
for the specified channel</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ivs_list_streams/"> list_streams </a></td>
<td style="text-align: left;">Gets summary information about live
streams in your account, in the Amazon Web Services region where the API
request is processed</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ivs_list_stream_sessions/"> list_stream_sessions </a></td>
<td style="text-align: left;">Gets a summary of current and previous
streams for a specified channel in your account, in the AWS region where
the API request is processed</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ivs_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Gets information about Amazon Web Services
tags for the specified ARN</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ivs_put_metadata/"> put_metadata </a></td>
<td style="text-align: left;">Inserts metadata into the active stream of
the specified channel</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ivs_stop_stream/"> stop_stream </a></td>
<td style="text-align: left;">Disconnects the incoming RTMPS stream for
the specified channel</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ivs_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds or updates tags for the Amazon Web
Services resource with the specified ARN</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ivs_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes tags from the resource with the
specified ARN</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ivs_update_channel/"> update_channel </a></td>
<td style="text-align: left;">Updates a channel's configuration</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- ivs()
    svc$batch_get_channel(
      Foo = 123
    )

    ## End(Not run)
