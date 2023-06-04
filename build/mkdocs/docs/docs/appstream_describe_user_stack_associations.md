<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_describe_user_stack_associations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list that describes the UserStackAssociation objects

### Description

Retrieves a list that describes the UserStackAssociation objects. You
must specify either or both of the following:

-   The stack name

-   The user name (email address of the user associated with the stack)
    and the authentication type for the user

### Usage

    appstream_describe_user_stack_associations(StackName, UserName,
      AuthenticationType, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appstream_describe_user_stack_associations_:_StackName">StackName</code></td>
<td><p>The name of the stack that is associated with the user.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_describe_user_stack_associations_:_UserName">UserName</code></td>
<td><p>The email address of the user who is associated with the
stack.</p>
<p>Users' email addresses are case-sensitive.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_describe_user_stack_associations_:_AuthenticationType">AuthenticationType</code></td>
<td><p>The authentication type for the user who is associated with the
stack. You must specify USERPOOL.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_describe_user_stack_associations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum size of each page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_describe_user_stack_associations_:_NextToken">NextToken</code></td>
<td><p>The pagination token to use to retrieve the next page of results
for this operation. If this value is null, it retrieves the first
page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UserStackAssociations = list(
        list(
          StackName = "string",
          UserName = "string",
          AuthenticationType = "API"|"SAML"|"USERPOOL"|"AWS_AD",
          SendEmailNotification = TRUE|FALSE
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_user_stack_associations(
      StackName = "string",
      UserName = "string",
      AuthenticationType = "API"|"SAML"|"USERPOOL"|"AWS_AD",
      MaxResults = 123,
      NextToken = "string"
    )
