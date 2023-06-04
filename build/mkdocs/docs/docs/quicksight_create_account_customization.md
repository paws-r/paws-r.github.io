<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_create_account_customization</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates Amazon QuickSight customizations for the current Amazon Web Services Region

### Description

Creates Amazon QuickSight customizations for the current Amazon Web
Services Region. Currently, you can add a custom default theme by using
the `create_account_customization` or `update_account_customization` API
operation. To further customize Amazon QuickSight by removing Amazon
QuickSight sample assets and videos for all new users, see [Customizing
Amazon
QuickSight](https://docs.aws.amazon.com/quicksight/latest/user/customizing-quicksight.html)
in the *Amazon QuickSight User Guide.*

You can create customizations for your Amazon Web Services account or,
if you specify a namespace, for a QuickSight namespace instead.
Customizations that apply to a namespace always override customizations
that apply to an Amazon Web Services account. To find out which
customizations apply, use the `describe_account_customization` API
operation.

Before you use the `create_account_customization` API operation to add a
theme as the namespace default, make sure that you first share the theme
with the namespace. If you don't share it with the namespace, the theme
isn't visible to your users even if you make it the default theme. To
check if the theme is shared, view the current permissions by using the
`describe_theme_permissions` API operation. To share the theme, grant
permissions by using the `update_theme_permissions` API operation.

### Usage

    quicksight_create_account_customization(AwsAccountId, Namespace,
      AccountCustomization, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_create_account_customization_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account that you
want to customize Amazon QuickSight for.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_account_customization_:_Namespace">Namespace</code></td>
<td><p>The Amazon QuickSight namespace that you want to add
customizations to.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_create_account_customization_:_AccountCustomization">AccountCustomization</code></td>
<td><p>[required] The Amazon QuickSight customizations you're adding in
the current Amazon Web Services Region. You can add these to an Amazon
Web Services account and a QuickSight namespace.</p>
<p>For example, you can add a default theme by setting
<code>AccountCustomization</code> to the midnight theme:
<code>"AccountCustomization": { "DefaultTheme": "arn:aws:quicksight::aws:theme/MIDNIGHT" }</code>.
Or, you can add a custom theme by specifying
<code>"AccountCustomization": { "DefaultTheme": "arn:aws:quicksight:us-west-2:111122223333:theme/bdb844d0-0fe9-4d9d-b520-0fe602d93639" }</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_account_customization_:_Tags">Tags</code></td>
<td><p>A list of the tags that you want to attach to this
resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      AwsAccountId = "string",
      Namespace = "string",
      AccountCustomization = list(
        DefaultTheme = "string",
        DefaultEmailCustomizationTemplate = "string"
      ),
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$create_account_customization(
      AwsAccountId = "string",
      Namespace = "string",
      AccountCustomization = list(
        DefaultTheme = "string",
        DefaultEmailCustomizationTemplate = "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
