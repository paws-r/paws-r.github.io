<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_update_sensitivity_inspection_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the settings for the sensitivity inspection template for an account

### Description

Updates the settings for the sensitivity inspection template for an
account.

### Usage

    macie2_update_sensitivity_inspection_template(description, excludes, id,
      includes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_update_sensitivity_inspection_template_:_description">description</code></td>
<td><p>A custom description of the template. The description can contain
as many as 200 characters.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_update_sensitivity_inspection_template_:_excludes">excludes</code></td>
<td><p>The managed data identifiers to explicitly exclude (not use) when
analyzing data.</p>
<p>To exclude an allow list or custom data identifier that's currently
included by the template, update the values for the
SensitivityInspectionTemplateIncludes.allowListIds and
SensitivityInspectionTemplateIncludes.customDataIdentifierIds
properties, respectively.</p></td>
</tr>
<tr class="odd">
<td><code
id="macie2_update_sensitivity_inspection_template_:_id">id</code></td>
<td><p>[required] The unique identifier for the Amazon Macie resource
that the request applies to.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_update_sensitivity_inspection_template_:_includes">includes</code></td>
<td><p>The allow lists, custom data identifiers, and managed data
identifiers to include (use) when analyzing data.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_sensitivity_inspection_template(
      description = "string",
      excludes = list(
        managedDataIdentifierIds = list(
          "string"
        )
      ),
      id = "string",
      includes = list(
        allowListIds = list(
          "string"
        ),
        customDataIdentifierIds = list(
          "string"
        ),
        managedDataIdentifierIds = list(
          "string"
        )
      )
    )
