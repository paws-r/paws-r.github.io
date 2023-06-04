<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_generate_embed_url_for_anonymous_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Generates an embed URL that you can use to embed an Amazon QuickSight dashboard or visual in your website, without having to register any reader users

### Description

Generates an embed URL that you can use to embed an Amazon QuickSight
dashboard or visual in your website, without having to register any
reader users. Before you use this action, make sure that you have
configured the dashboards and permissions.

The following rules apply to the generated URL:

-   It contains a temporary bearer token. It is valid for 5 minutes
    after it is generated. Once redeemed within this period, it cannot
    be re-used again.

-   The URL validity period should not be confused with the actual
    session lifetime that can be customized using the
    `SessionLifetimeInMinutes` parameter. The resulting user session is
    valid for 15 minutes (minimum) to 10 hours (maximum). The default
    session duration is 10 hours.

-   You are charged only when the URL is used or there is interaction
    with Amazon QuickSight.

For more information, see [Embedded
Analytics](https://docs.aws.amazon.com/quicksight/latest/user/embedded-analytics.html)
in the *Amazon QuickSight User Guide*.

For more information about the high-level steps for embedding and for an
interactive demo of the ways you can customize embedding, visit the
[Amazon QuickSight Developer
Portal](https://docs.aws.amazon.com/quicksight/latest/user/quicksight-dev-portal.html).

### Usage

    quicksight_generate_embed_url_for_anonymous_user(AwsAccountId,
      SessionLifetimeInMinutes, Namespace, SessionTags,
      AuthorizedResourceArns, ExperienceConfiguration, AllowedDomains)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_generate_embed_url_for_anonymous_user_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account that
contains the dashboard that you're embedding.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_generate_embed_url_for_anonymous_user_:_SessionLifetimeInMinutes">SessionLifetimeInMinutes</code></td>
<td><p>How many minutes the session is valid. The session lifetime must
be in [15-600] minutes range.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_generate_embed_url_for_anonymous_user_:_Namespace">Namespace</code></td>
<td><p>[required] The Amazon QuickSight namespace that the anonymous
user virtually belongs to. If you are not using an Amazon QuickSight
custom namespace, set this to <code>default</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_generate_embed_url_for_anonymous_user_:_SessionTags">SessionTags</code></td>
<td><p>The session tags used for row-level security. Before you use this
parameter, make sure that you have configured the relevant datasets
using the <code>DataSet$RowLevelPermissionTagConfiguration</code>
parameter so that session tags can be used to provide row-level
security.</p>
<p>These are not the tags used for the Amazon Web Services resource
tagging feature. For more information, see <a
href="https://docs.aws.amazon.com/quicksight/latest/user/quicksight-dev-rls-tags.html">Using
Row-Level Security (RLS) with Tags</a>in the <em>Amazon QuickSight User
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_generate_embed_url_for_anonymous_user_:_AuthorizedResourceArns">AuthorizedResourceArns</code></td>
<td><p>[required] The Amazon Resource Names (ARNs) for the Amazon
QuickSight resources that the user is authorized to access during the
lifetime of the session. If you choose <code>Dashboard</code> embedding
experience, pass the list of dashboard ARNs in the account that you want
the user to be able to view. Currently, you can pass up to 25 dashboard
ARNs in each API call.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_generate_embed_url_for_anonymous_user_:_ExperienceConfiguration">ExperienceConfiguration</code></td>
<td><p>[required] The configuration of the experience that you are
embedding.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_generate_embed_url_for_anonymous_user_:_AllowedDomains">AllowedDomains</code></td>
<td><p>The domains that you want to add to the allow list for access to
the generated URL that is then embedded. This optional parameter
overrides the static domains that are configured in the Manage
QuickSight menu in the Amazon QuickSight console. Instead, it allows
only the domains that you include in this parameter. You can list up to
three domains or subdomains in each API call.</p>
<p>To include all subdomains under a specific domain to the allow list,
use <code>*</code>. For example, <code
style="white-space: pre;">⁠https://*.sapp.amazon.com⁠</code> includes all
subdomains under <code
style="white-space: pre;">⁠https://sapp.amazon.com⁠</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EmbedUrl = "string",
      Status = 123,
      RequestId = "string",
      AnonymousUserArn = "string"
    )

### Request syntax

    svc$generate_embed_url_for_anonymous_user(
      AwsAccountId = "string",
      SessionLifetimeInMinutes = 123,
      Namespace = "string",
      SessionTags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      AuthorizedResourceArns = list(
        "string"
      ),
      ExperienceConfiguration = list(
        Dashboard = list(
          InitialDashboardId = "string"
        ),
        DashboardVisual = list(
          InitialDashboardVisualId = list(
            DashboardId = "string",
            SheetId = "string",
            VisualId = "string"
          )
        ),
        QSearchBar = list(
          InitialTopicId = "string"
        )
      ),
      AllowedDomains = list(
        "string"
      )
    )
