<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector_describe_rules_packages</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the rules packages that are specified by the ARNs of the rules packages

### Description

Describes the rules packages that are specified by the ARNs of the rules
packages.

### Usage

    inspector_describe_rules_packages(rulesPackageArns, locale)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector_describe_rules_packages_:_rulesPackageArns">rulesPackageArns</code></td>
<td><p>[required] The ARN that specifies the rules package that you want
to describe.</p></td>
</tr>
<tr class="even">
<td><code
id="inspector_describe_rules_packages_:_locale">locale</code></td>
<td><p>The locale that you want to translate a rules package description
into.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      rulesPackages = list(
        list(
          arn = "string",
          name = "string",
          version = "string",
          provider = "string",
          description = "string"
        )
      ),
      failedItems = list(
        list(
          failureCode = "INVALID_ARN"|"DUPLICATE_ARN"|"ITEM_DOES_NOT_EXIST"|"ACCESS_DENIED"|"LIMIT_EXCEEDED"|"INTERNAL_ERROR",
          retryable = TRUE|FALSE
        )
      )
    )

### Request syntax

    svc$describe_rules_packages(
      rulesPackageArns = list(
        "string"
      ),
      locale = "EN_US"
    )

### Examples

    ## Not run: 
    # Describes the rules packages that are specified by the ARNs of the rules
    # packages.
    svc$describe_rules_packages(
      rulesPackageArns = list(
        "arn:aws:inspector:us-west-2:758058086616:rulespackage/0-JJOtZiqQ"
      )
    )

    ## End(Not run)
