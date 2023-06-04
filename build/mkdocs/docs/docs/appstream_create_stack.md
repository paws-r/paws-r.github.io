<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_create_stack</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a stack to start streaming applications to users

### Description

Creates a stack to start streaming applications to users. A stack
consists of an associated fleet, user access policies, and storage
configurations.

### Usage

    appstream_create_stack(Name, Description, DisplayName,
      StorageConnectors, RedirectURL, FeedbackURL, UserSettings,
      ApplicationSettings, Tags, AccessEndpoints, EmbedHostDomains,
      StreamingExperienceSettings)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="appstream_create_stack_:_Name">Name</code></td>
<td><p>[required] The name of the stack.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_create_stack_:_Description">Description</code></td>
<td><p>The description to display.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_create_stack_:_DisplayName">DisplayName</code></td>
<td><p>The stack name to display.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_create_stack_:_StorageConnectors">StorageConnectors</code></td>
<td><p>The storage connectors to enable.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_create_stack_:_RedirectURL">RedirectURL</code></td>
<td><p>The URL that users are redirected to after their streaming
session ends.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_create_stack_:_FeedbackURL">FeedbackURL</code></td>
<td><p>The URL that users are redirected to after they click the Send
Feedback link. If no URL is specified, no Send Feedback link is
displayed.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_create_stack_:_UserSettings">UserSettings</code></td>
<td><p>The actions that are enabled or disabled for users during their
streaming sessions. By default, these actions are enabled.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_create_stack_:_ApplicationSettings">ApplicationSettings</code></td>
<td><p>The persistent application settings for users of a stack. When
these settings are enabled, changes that users make to applications and
Windows settings are automatically saved after each session and applied
to the next session.</p></td>
</tr>
<tr class="odd">
<td><code id="appstream_create_stack_:_Tags">Tags</code></td>
<td><p>The tags to associate with the stack. A tag is a key-value pair,
and the value is optional. For example, Environment=Test. If you do not
specify a value, Environment=.</p>
<p>If you do not specify a value, the value is set to an empty
string.</p>
<p>Generally allowed characters are: letters, numbers, and spaces
representable in UTF-8, and the following special characters:</p>
<p>_ . : / = + \ - @</p>
<p>For more information about tags, see <a
href="https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html">Tagging
Your Resources</a> in the <em>Amazon AppStream 2.0 Administration
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_create_stack_:_AccessEndpoints">AccessEndpoints</code></td>
<td><p>The list of interface VPC endpoint (interface endpoint) objects.
Users of the stack can connect to AppStream 2.0 only through the
specified endpoints.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_create_stack_:_EmbedHostDomains">EmbedHostDomains</code></td>
<td><p>The domains where AppStream 2.0 streaming sessions can be
embedded in an iframe. You must approve the domains that you want to
host embedded AppStream 2.0 streaming sessions.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_create_stack_:_StreamingExperienceSettings">StreamingExperienceSettings</code></td>
<td><p>The streaming protocol you want your stack to prefer. This can be
UDP or TCP. Currently, UDP is only supported in the Windows native
client.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Stack = list(
        Arn = "string",
        Name = "string",
        Description = "string",
        DisplayName = "string",
        CreatedTime = as.POSIXct(
          "2015-01-01"
        ),
        StorageConnectors = list(
          list(
            ConnectorType = "HOMEFOLDERS"|"GOOGLE_DRIVE"|"ONE_DRIVE",
            ResourceIdentifier = "string",
            Domains = list(
              "string"
            )
          )
        ),
        RedirectURL = "string",
        FeedbackURL = "string",
        StackErrors = list(
          list(
            ErrorCode = "STORAGE_CONNECTOR_ERROR"|"INTERNAL_SERVICE_ERROR",
            ErrorMessage = "string"
          )
        ),
        UserSettings = list(
          list(
            Action = "CLIPBOARD_COPY_FROM_LOCAL_DEVICE"|"CLIPBOARD_COPY_TO_LOCAL_DEVICE"|"FILE_UPLOAD"|"FILE_DOWNLOAD"|"PRINTING_TO_LOCAL_DEVICE"|"DOMAIN_PASSWORD_SIGNIN"|"DOMAIN_SMART_CARD_SIGNIN",
            Permission = "ENABLED"|"DISABLED"
          )
        ),
        ApplicationSettings = list(
          Enabled = TRUE|FALSE,
          SettingsGroup = "string",
          S3BucketName = "string"
        ),
        AccessEndpoints = list(
          list(
            EndpointType = "STREAMING",
            VpceId = "string"
          )
        ),
        EmbedHostDomains = list(
          "string"
        ),
        StreamingExperienceSettings = list(
          PreferredProtocol = "TCP"|"UDP"
        )
      )
    )

### Request syntax

    svc$create_stack(
      Name = "string",
      Description = "string",
      DisplayName = "string",
      StorageConnectors = list(
        list(
          ConnectorType = "HOMEFOLDERS"|"GOOGLE_DRIVE"|"ONE_DRIVE",
          ResourceIdentifier = "string",
          Domains = list(
            "string"
          )
        )
      ),
      RedirectURL = "string",
      FeedbackURL = "string",
      UserSettings = list(
        list(
          Action = "CLIPBOARD_COPY_FROM_LOCAL_DEVICE"|"CLIPBOARD_COPY_TO_LOCAL_DEVICE"|"FILE_UPLOAD"|"FILE_DOWNLOAD"|"PRINTING_TO_LOCAL_DEVICE"|"DOMAIN_PASSWORD_SIGNIN"|"DOMAIN_SMART_CARD_SIGNIN",
          Permission = "ENABLED"|"DISABLED"
        )
      ),
      ApplicationSettings = list(
        Enabled = TRUE|FALSE,
        SettingsGroup = "string"
      ),
      Tags = list(
        "string"
      ),
      AccessEndpoints = list(
        list(
          EndpointType = "STREAMING",
          VpceId = "string"
        )
      ),
      EmbedHostDomains = list(
        "string"
      ),
      StreamingExperienceSettings = list(
        PreferredProtocol = "TCP"|"UDP"
      )
    )
