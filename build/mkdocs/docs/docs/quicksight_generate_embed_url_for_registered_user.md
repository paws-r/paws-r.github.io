<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_generate_embed_url_for_registered_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Generates an embed URL that you can use to embed an Amazon QuickSight experience in your website

### Description

Generates an embed URL that you can use to embed an Amazon QuickSight
experience in your website. This action can be used for any type of user
registered in an Amazon QuickSight account. Before you use this action,
make sure that you have configured the relevant Amazon QuickSight
resource and permissions.

The following rules apply to the generated URL:

-   It contains a temporary bearer token. It is valid for 5 minutes
    after it is generated. Once redeemed within this period, it cannot
    be re-used again.

-   The URL validity period should not be confused with the actual
    session lifetime that can be customized using the
    `SessionLifetimeInMinutes` parameter.

    The resulting user session is valid for 15 minutes (minimum) to 10
    hours (maximum). The default session duration is 10 hours.

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

    quicksight_generate_embed_url_for_registered_user(AwsAccountId,
      SessionLifetimeInMinutes, UserArn, ExperienceConfiguration,
      AllowedDomains)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_generate_embed_url_for_registered_user_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account that
contains the dashboard that you're embedding.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_generate_embed_url_for_registered_user_:_SessionLifetimeInMinutes">SessionLifetimeInMinutes</code></td>
<td><p>How many minutes the session is valid. The session lifetime must
be in [15-600] minutes range.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_generate_embed_url_for_registered_user_:_UserArn">UserArn</code></td>
<td><p>[required] The Amazon Resource Name for the registered
user.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_generate_embed_url_for_registered_user_:_ExperienceConfiguration">ExperienceConfiguration</code></td>
<td><p>[required] The experience you are embedding. For registered
users, you can embed Amazon QuickSight dashboards, Amazon QuickSight
visuals, the Amazon QuickSight Q search bar, or the entire Amazon
QuickSight console.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_generate_embed_url_for_registered_user_:_AllowedDomains">AllowedDomains</code></td>
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
      RequestId = "string"
    )

### Request syntax

    svc$generate_embed_url_for_registered_user(
      AwsAccountId = "string",
      SessionLifetimeInMinutes = 123,
      UserArn = "string",
      ExperienceConfiguration = list(
        Dashboard = list(
          InitialDashboardId = "string",
          FeatureConfigurations = list(
            StatePersistence = list(
              Enabled = TRUE|FALSE
            ),
            Bookmarks = list(
              Enabled = TRUE|FALSE
            )
          )
        ),
        QuickSightConsole = list(
          InitialPath = "string",
          FeatureConfigurations = list(
            StatePersistence = list(
              Enabled = TRUE|FALSE
            )
          )
        ),
        QSearchBar = list(
          InitialTopicId = "string"
        ),
        DashboardVisual = list(
          InitialDashboardVisualId = list(
            DashboardId = "string",
            SheetId = "string",
            VisualId = "string"
          )
        )
      ),
      AllowedDomains = list(
        "string"
      )
    )
