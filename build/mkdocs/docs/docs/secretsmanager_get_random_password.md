<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>secretsmanager_get_random_password</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Generates a random password

### Description

Generates a random password. We recommend that you specify the maximum
length and include every character type that the system you are
generating a password for can support.

Secrets Manager generates a CloudTrail log entry when you call this
action. Do not include sensitive information in request parameters
because it might be logged. For more information, see [Logging Secrets
Manager events with
CloudTrail](https://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring-cloudtrail.html).

**Required permissions:** `secretsmanager:GetRandomPassword`. For more
information, see [IAM policy actions for Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions)
and [Authentication and access control in Secrets
Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).

### Usage

    secretsmanager_get_random_password(PasswordLength, ExcludeCharacters,
      ExcludeNumbers, ExcludePunctuation, ExcludeUppercase, ExcludeLowercase,
      IncludeSpace, RequireEachIncludedType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="secretsmanager_get_random_password_:_PasswordLength">PasswordLength</code></td>
<td><p>The length of the password. If you don't include this parameter,
the default length is 32 characters.</p></td>
</tr>
<tr class="even">
<td><code
id="secretsmanager_get_random_password_:_ExcludeCharacters">ExcludeCharacters</code></td>
<td><p>A string of the characters that you don't want in the
password.</p></td>
</tr>
<tr class="odd">
<td><code
id="secretsmanager_get_random_password_:_ExcludeNumbers">ExcludeNumbers</code></td>
<td><p>Specifies whether to exclude numbers from the password. If you
don't include this switch, the password can contain numbers.</p></td>
</tr>
<tr class="even">
<td><code
id="secretsmanager_get_random_password_:_ExcludePunctuation">ExcludePunctuation</code></td>
<td><p>Specifies whether to exclude the following punctuation characters
from the password: <code
style="white-space: pre;">⁠! \" # $ % &amp; \' ( ) * + , - . / : ; &lt; = &gt; ? @ [ \ ] ^ _ \` { | } ~⁠</code>.
If you don't include this switch, the password can contain
punctuation.</p></td>
</tr>
<tr class="odd">
<td><code
id="secretsmanager_get_random_password_:_ExcludeUppercase">ExcludeUppercase</code></td>
<td><p>Specifies whether to exclude uppercase letters from the password.
If you don't include this switch, the password can contain uppercase
letters.</p></td>
</tr>
<tr class="even">
<td><code
id="secretsmanager_get_random_password_:_ExcludeLowercase">ExcludeLowercase</code></td>
<td><p>Specifies whether to exclude lowercase letters from the password.
If you don't include this switch, the password can contain lowercase
letters.</p></td>
</tr>
<tr class="odd">
<td><code
id="secretsmanager_get_random_password_:_IncludeSpace">IncludeSpace</code></td>
<td><p>Specifies whether to include the space character. If you include
this switch, the password can contain space characters.</p></td>
</tr>
<tr class="even">
<td><code
id="secretsmanager_get_random_password_:_RequireEachIncludedType">RequireEachIncludedType</code></td>
<td><p>Specifies whether to include at least one upper and lowercase
letter, one number, and one punctuation. If you don't include this
switch, the password contains at least one of every character
type.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RandomPassword = "string"
    )

### Request syntax

    svc$get_random_password(
      PasswordLength = 123,
      ExcludeCharacters = "string",
      ExcludeNumbers = TRUE|FALSE,
      ExcludePunctuation = TRUE|FALSE,
      ExcludeUppercase = TRUE|FALSE,
      ExcludeLowercase = TRUE|FALSE,
      IncludeSpace = TRUE|FALSE,
      RequireEachIncludedType = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # The following example shows how to request a randomly generated
    # password. This example includes the optional flags to require spaces and
    # at least one character of each included type. It specifies a length of
    # 20 characters.
    svc$get_random_password(
      IncludeSpace = TRUE,
      PasswordLength = 20L,
      RequireEachIncludedType = TRUE
    )

    ## End(Not run)
