<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_get_session_embed_url</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Generates a session URL and authorization code that you can use to embed the Amazon Amazon QuickSight console in your web server code

### Description

Generates a session URL and authorization code that you can use to embed
the Amazon Amazon QuickSight console in your web server code. Use
`get_session_embed_url` where you want to provide an authoring portal
that allows users to create data sources, datasets, analyses, and
dashboards. The users who access an embedded Amazon QuickSight console
need belong to the author or admin security cohort. If you want to
restrict permissions to some of these features, add a custom permissions
profile to the user with the `update_user` API operation. Use
`register_user` API operation to add a new user with a custom permission
profile attached. For more information, see the following sections in
the *Amazon QuickSight User Guide*:

-   [Embedding
    Analytics](https://docs.aws.amazon.com/quicksight/latest/user/embedded-analytics.html)

-   [Customizing Access to the Amazon QuickSight
    Console](https://docs.aws.amazon.com/quicksight/latest/user/customizing-permissions-to-the-quicksight-console.html)

### Usage

    quicksight_get_session_embed_url(AwsAccountId, EntryPoint,
      SessionLifetimeInMinutes, UserArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_get_session_embed_url_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account associated
with your Amazon QuickSight subscription.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_get_session_embed_url_:_EntryPoint">EntryPoint</code></td>
<td><p>The URL you use to access the embedded session. The entry point
URL is constrained to the following paths:</p>
<ul>
<li><p><code style="white-space: pre;">⁠/start⁠</code></p></li>
<li><p><code style="white-space: pre;">⁠/start/analyses⁠</code></p></li>
<li><p><code style="white-space: pre;">⁠/start/dashboards⁠</code></p></li>
<li><p><code style="white-space: pre;">⁠/start/favorites⁠</code></p></li>
<li><p><code style="white-space: pre;">⁠/dashboards/DashboardId ⁠</code> -
where <code>DashboardId</code> is the actual ID key from the Amazon
QuickSight console URL of the dashboard</p></li>
<li><p><code style="white-space: pre;">⁠/analyses/AnalysisId ⁠</code> -
where <code>AnalysisId</code> is the actual ID key from the Amazon
QuickSight console URL of the analysis</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_get_session_embed_url_:_SessionLifetimeInMinutes">SessionLifetimeInMinutes</code></td>
<td><p>How many minutes the session is valid. The session lifetime must
be 15-600 minutes.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_get_session_embed_url_:_UserArn">UserArn</code></td>
<td><p>The Amazon QuickSight user's Amazon Resource Name (ARN), for use
with <code>QUICKSIGHT</code> identity type. You can use this for any
type of Amazon QuickSight users in your account (readers, authors, or
admins). They need to be authenticated as one of the following:</p>
<ol>
<li><p>Active Directory (AD) users or group members</p></li>
<li><p>Invited nonfederated users</p></li>
<li><p>IAM users and IAM role-based sessions authenticated through
Federated Single Sign-On using SAML, OpenID Connect, or IAM
federation</p></li>
</ol>
<p>Omit this parameter for users in the third group, IAM users and IAM
role-based sessions.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EmbedUrl = "string",
      Status = 123,
      RequestId = "string"
    )

### Request syntax

    svc$get_session_embed_url(
      AwsAccountId = "string",
      EntryPoint = "string",
      SessionLifetimeInMinutes = 123,
      UserArn = "string"
    )
