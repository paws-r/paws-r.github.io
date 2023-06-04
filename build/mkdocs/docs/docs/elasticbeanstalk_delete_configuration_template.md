<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_delete_configuration_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified configuration template

### Description

Deletes the specified configuration template.

When you launch an environment using a configuration template, the
environment gets a copy of the template. You can delete or modify the
environment's copy of the template without affecting the running
environment.

### Usage

    elasticbeanstalk_delete_configuration_template(ApplicationName,
      TemplateName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_delete_configuration_template_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The name of the application to delete the
configuration template from.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_delete_configuration_template_:_TemplateName">TemplateName</code></td>
<td><p>[required] The name of the configuration template to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_configuration_template(
      ApplicationName = "string",
      TemplateName = "string"
    )

### Examples

    ## Not run: 
    # The following operation deletes a configuration template named
    # my-template for an application named my-app:
    svc$delete_configuration_template(
      ApplicationName = "my-app",
      TemplateName = "my-template"
    )

    ## End(Not run)
