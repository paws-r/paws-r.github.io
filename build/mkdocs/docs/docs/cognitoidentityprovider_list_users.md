<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_list_users</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the users in the Amazon Cognito user pool

### Description

Lists the users in the Amazon Cognito user pool.

### Usage

    cognitoidentityprovider_list_users(UserPoolId, AttributesToGet, Limit,
      PaginationToken, Filter)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_list_users_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID for the user pool on which the search
should be performed.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_list_users_:_AttributesToGet">AttributesToGet</code></td>
<td><p>An array of strings, where each string is the name of a user
attribute to be returned for each user in the search results. If the
array is null, all attributes are returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_list_users_:_Limit">Limit</code></td>
<td><p>Maximum number of users to be returned.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_list_users_:_PaginationToken">PaginationToken</code></td>
<td><p>An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_list_users_:_Filter">Filter</code></td>
<td><p>A filter string of the form "<em>AttributeName</em>
<em>Filter-Type</em> "<em>AttributeValue</em>"". Quotation marks within
the filter string must be escaped using the backslash (\) character. For
example, "<code>family_name</code> = \"Reddy\"".</p>
<ul>
<li><p><em>AttributeName</em>: The name of the attribute to search for.
You can only search for one attribute at a time.</p></li>
<li><p><em>Filter-Type</em>: For an exact match, use =, for example,
"<code>given_name</code> = \"Jon\"". For a prefix ("starts with") match,
use ^=, for example, "<code>given_name</code> ^= \"Jon\"".</p></li>
<li><p><em>AttributeValue</em>: The attribute value that must be matched
for each user.</p></li>
</ul>
<p>If the filter string is empty, <code>list_users</code> returns all
users in the user pool.</p>
<p>You can only search for the following standard attributes:</p>
<ul>
<li><p><code>username</code> (case-sensitive)</p></li>
<li><p><code>email</code></p></li>
<li><p><code>phone_number</code></p></li>
<li><p><code>name</code></p></li>
<li><p><code>given_name</code></p></li>
<li><p><code>family_name</code></p></li>
<li><p><code>preferred_username</code></p></li>
<li><p><code>cognito:user_status</code> (called <strong>Status</strong>
in the Console) (case-insensitive)</p></li>
<li><p><code
style="white-space: pre;">⁠status (called Enabled in the Console) (case-sensitive)⁠</code></p></li>
<li><p><code>sub</code></p></li>
</ul>
<p>Custom attributes aren't searchable.</p>
<p>You can also list users with a client-side filter. The server-side
filter matches no more than one attribute. For an advanced search, use a
client-side filter with the <code>--query</code> parameter of the
<code>list-users</code> action in the CLI. When you use a client-side
filter, ListUsers returns a paginated list of zero or more users. You
can receive multiple pages in a row with zero results. Repeat the query
with each pagination token that is returned until you receive a null
pagination token value, and then review the combined result.</p>
<p>For more information about server-side and client-side filtering, see
<a
href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-filter.html">FilteringCLI
output</a> in the <a
href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-filter.html">Command
Line Interface User Guide</a>.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-using-listusers-api">Searching
for Users Using the ListUsers API</a> and <a
href="https://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-listusers-api-examples">Examples
of Using the ListUsers API</a> in the <em>Amazon Cognito Developer
Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Users = list(
        list(
          Username = "string",
          Attributes = list(
            list(
              Name = "string",
              Value = "string"
            )
          ),
          UserCreateDate = as.POSIXct(
            "2015-01-01"
          ),
          UserLastModifiedDate = as.POSIXct(
            "2015-01-01"
          ),
          Enabled = TRUE|FALSE,
          UserStatus = "UNCONFIRMED"|"CONFIRMED"|"ARCHIVED"|"COMPROMISED"|"UNKNOWN"|"RESET_REQUIRED"|"FORCE_CHANGE_PASSWORD",
          MFAOptions = list(
            list(
              DeliveryMedium = "SMS"|"EMAIL",
              AttributeName = "string"
            )
          )
        )
      ),
      PaginationToken = "string"
    )

### Request syntax

    svc$list_users(
      UserPoolId = "string",
      AttributesToGet = list(
        "string"
      ),
      Limit = 123,
      PaginationToken = "string",
      Filter = "string"
    )
