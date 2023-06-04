<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_get_dashboard_embed_url</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Generates a temporary session URL and authorization code(bearer token) that you can use to embed an Amazon QuickSight read-only dashboard in your website or application

### Description

Generates a temporary session URL and authorization code(bearer token)
that you can use to embed an Amazon QuickSight read-only dashboard in
your website or application. Before you use this command, make sure that
you have configured the dashboards and permissions.

Currently, you can use `GetDashboardEmbedURL` only from the server, not
from the user's browser. The following rules apply to the generated URL:

-   They must be used together.

-   They can be used one time only.

-   They are valid for 5 minutes after you run this command.

-   You are charged only when the URL is used or there is interaction
    with Amazon QuickSight.

-   The resulting user session is valid for 15 minutes (default) up to
    10 hours (maximum). You can use the optional
    `SessionLifetimeInMinutes` parameter to customize session duration.

For more information, see [Embedding Analytics Using
GetDashboardEmbedUrl](https://docs.aws.amazon.com/quicksight/latest/user/embedded-analytics-deprecated.html)
in the *Amazon QuickSight User Guide*.

For more information about the high-level steps for embedding and for an
interactive demo of the ways you can customize embedding, visit the
[Amazon QuickSight Developer
Portal](https://docs.aws.amazon.com/quicksight/latest/user/quicksight-dev-portal.html).

### Usage

    quicksight_get_dashboard_embed_url(AwsAccountId, DashboardId,
      IdentityType, SessionLifetimeInMinutes, UndoRedoDisabled, ResetDisabled,
      StatePersistenceEnabled, UserArn, Namespace, AdditionalDashboardIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_get_dashboard_embed_url_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account that
contains the dashboard that you're embedding.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_get_dashboard_embed_url_:_DashboardId">DashboardId</code></td>
<td><p>[required] The ID for the dashboard, also added to the Identity
and Access Management (IAM) policy.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_get_dashboard_embed_url_:_IdentityType">IdentityType</code></td>
<td><p>[required] The authentication method that the user uses to sign
in.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_get_dashboard_embed_url_:_SessionLifetimeInMinutes">SessionLifetimeInMinutes</code></td>
<td><p>How many minutes the session is valid. The session lifetime must
be 15-600 minutes.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_get_dashboard_embed_url_:_UndoRedoDisabled">UndoRedoDisabled</code></td>
<td><p>Remove the undo/redo button on the embedded dashboard. The
default is FALSE, which enables the undo/redo button.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_get_dashboard_embed_url_:_ResetDisabled">ResetDisabled</code></td>
<td><p>Remove the reset button on the embedded dashboard. The default is
FALSE, which enables the reset button.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_get_dashboard_embed_url_:_StatePersistenceEnabled">StatePersistenceEnabled</code></td>
<td><p>Adds persistence of state for the user session in an embedded
dashboard. Persistence applies to the sheet and the parameter settings.
These are control settings that the dashboard subscriber (Amazon
QuickSight reader) chooses while viewing the dashboard. If this is set
to <code>TRUE</code>, the settings are the same when the subscriber
reopens the same dashboard URL. The state is stored in Amazon
QuickSight, not in a browser cookie. If this is set to FALSE, the state
of the user session is not persisted. The default is
<code>FALSE</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_get_dashboard_embed_url_:_UserArn">UserArn</code></td>
<td><p>The Amazon QuickSight user's Amazon Resource Name (ARN), for use
with <code>QUICKSIGHT</code> identity type. You can use this for any
Amazon QuickSight users in your account (readers, authors, or admins)
authenticated as one of the following:</p>
<ul>
<li><p>Active Directory (AD) users or group members</p></li>
<li><p>Invited nonfederated users</p></li>
<li><p>IAM users and IAM role-based sessions authenticated through
Federated Single Sign-On using SAML, OpenID Connect, or IAM
federation.</p></li>
</ul>
<p>Omit this parameter for users in the third group – IAM users and IAM
role-based sessions.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_get_dashboard_embed_url_:_Namespace">Namespace</code></td>
<td><p>The Amazon QuickSight namespace that contains the dashboard IDs
in this request. If you're not using a custom namespace, set
<code>Namespace = default</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_get_dashboard_embed_url_:_AdditionalDashboardIds">AdditionalDashboardIds</code></td>
<td><p>A list of one or more dashboard IDs that you want anonymous users
to have tempporary access to. Currently, the <code>IdentityType</code>
parameter must be set to <code>ANONYMOUS</code> because other identity
types authenticate as Amazon QuickSight or IAM users. For example, if
you set "<code
style="white-space: pre;">⁠--dashboard-id dash_id1 --dashboard-id dash_id2 dash_id3 identity-type ANONYMOUS⁠</code>",
the session can access all three dashboards.</p></td>
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

    svc$get_dashboard_embed_url(
      AwsAccountId = "string",
      DashboardId = "string",
      IdentityType = "IAM"|"QUICKSIGHT"|"ANONYMOUS",
      SessionLifetimeInMinutes = 123,
      UndoRedoDisabled = TRUE|FALSE,
      ResetDisabled = TRUE|FALSE,
      StatePersistenceEnabled = TRUE|FALSE,
      UserArn = "string",
      Namespace = "string",
      AdditionalDashboardIds = list(
        "string"
      )
    )
