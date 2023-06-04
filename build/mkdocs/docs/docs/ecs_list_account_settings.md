<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_list_account_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the account settings for a specified principal

### Description

Lists the account settings for a specified principal.

### Usage

    ecs_list_account_settings(name, value, principalArn, effectiveSettings,
      nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecs_list_account_settings_:_name">name</code></td>
<td><p>The name of the account setting you want to list the settings
for.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_list_account_settings_:_value">value</code></td>
<td><p>The value of the account settings to filter results with. You
must also specify an account setting name to use this
parameter.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_list_account_settings_:_principalArn">principalArn</code></td>
<td><p>The ARN of the principal, which can be a user, role, or the root
user. If this field is omitted, the account settings are listed only for
the authenticated user.</p>
<p>Federated users assume the account setting of the root user and can't
have explicit account settings set for them.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_list_account_settings_:_effectiveSettings">effectiveSettings</code></td>
<td><p>Determines whether to return the effective settings. If
<code>true</code>, the account settings for the root user or the default
setting for the <code>principalArn</code> are returned. If
<code>false</code>, the account settings for the
<code>principalArn</code> are returned if they're set. Otherwise, no
account settings are returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_list_account_settings_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value returned from a
<code>list_account_settings</code> request indicating that more results
are available to fulfill the request and further calls will be needed.
If <code>maxResults</code> was provided, it's possible the number of
results to be fewer than <code>maxResults</code>.</p>
<p>This token should be treated as an opaque identifier that is only
used to retrieve the next items in a list and not for other programmatic
purposes.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_list_account_settings_:_maxResults">maxResults</code></td>
<td><p>The maximum number of account setting results returned by
<code>list_account_settings</code> in paginated output. When this
parameter is used, <code>list_account_settings</code> only returns
<code>maxResults</code> results in a single page along with a
<code>nextToken</code> response element. The remaining results of the
initial request can be seen by sending another
<code>list_account_settings</code> request with the returned
<code>nextToken</code> value. This value can be between 1 and 10. If
this parameter isn't used, then <code>list_account_settings</code>
returns up to 10 results and a <code>nextToken</code> value if
applicable.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      settings = list(
        list(
          name = "serviceLongArnFormat"|"taskLongArnFormat"|"containerInstanceLongArnFormat"|"awsvpcTrunking"|"containerInsights"|"fargateFIPSMode"|"tagResourceAuthorization",
          value = "string",
          principalArn = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_account_settings(
      name = "serviceLongArnFormat"|"taskLongArnFormat"|"containerInstanceLongArnFormat"|"awsvpcTrunking"|"containerInsights"|"fargateFIPSMode"|"tagResourceAuthorization",
      value = "string",
      principalArn = "string",
      effectiveSettings = TRUE|FALSE,
      nextToken = "string",
      maxResults = 123
    )

### Examples

    ## Not run: 
    # This example displays the effective account settings for your account.
    svc$list_account_settings(
      effectiveSettings = TRUE
    )

    # This example displays the effective account settings for the specified
    # user or role.
    svc$list_account_settings(
      effectiveSettings = TRUE,
      principalArn = "arn:aws:iam::<aws_account_id>:user/principalName"
    )

    ## End(Not run)
