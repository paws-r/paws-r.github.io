<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_update_account_customization</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates Amazon QuickSight customizations for the current Amazon Web Services Region

### Description

Updates Amazon QuickSight customizations for the current Amazon Web
Services Region. Currently, the only customization that you can use is a
theme.

You can use customizations for your Amazon Web Services account or, if
you specify a namespace, for a Amazon QuickSight namespace instead.
Customizations that apply to a namespace override customizations that
apply to an Amazon Web Services account. To find out which
customizations apply, use the `describe_account_customization` API
operation.

### Usage

    quicksight_update_account_customization(AwsAccountId, Namespace,
      AccountCustomization)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_update_account_customization_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account that you
want to update Amazon QuickSight customizations for.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_account_customization_:_Namespace">Namespace</code></td>
<td><p>The namespace that you want to update Amazon QuickSight
customizations for.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_update_account_customization_:_AccountCustomization">AccountCustomization</code></td>
<td><p>[required] The Amazon QuickSight customizations you're updating
in the current Amazon Web Services Region.</p></td>
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

    svc$update_account_customization(
      AwsAccountId = "string",
      Namespace = "string",
      AccountCustomization = list(
        DefaultTheme = "string",
        DefaultEmailCustomizationTemplate = "string"
      )
    )
