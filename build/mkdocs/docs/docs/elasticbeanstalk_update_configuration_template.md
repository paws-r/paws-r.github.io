<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_update_configuration_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified configuration template to have the specified properties or configuration option values

### Description

Updates the specified configuration template to have the specified
properties or configuration option values.

If a property (for example, `ApplicationName`) is not provided, its
value remains unchanged. To clear such properties, specify an empty
string.

Related Topics

-   `describe_configuration_options`

### Usage

    elasticbeanstalk_update_configuration_template(ApplicationName,
      TemplateName, Description, OptionSettings, OptionsToRemove)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_update_configuration_template_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The name of the application associated with the
configuration template to update.</p>
<p>If no application is found with this name,
<code>update_configuration_template</code> returns an
<code>InvalidParameterValue</code> error.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_update_configuration_template_:_TemplateName">TemplateName</code></td>
<td><p>[required] The name of the configuration template to update.</p>
<p>If no configuration template is found with this name,
<code>update_configuration_template</code> returns an
<code>InvalidParameterValue</code> error.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_update_configuration_template_:_Description">Description</code></td>
<td><p>A new description for the configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_update_configuration_template_:_OptionSettings">OptionSettings</code></td>
<td><p>A list of configuration option settings to update with the new
specified option value.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_update_configuration_template_:_OptionsToRemove">OptionsToRemove</code></td>
<td><p>A list of configuration options to remove from the configuration
set.</p>
<p>Constraint: You can remove only <code>UserDefined</code>
configuration options.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SolutionStackName = "string",
      PlatformArn = "string",
      ApplicationName = "string",
      TemplateName = "string",
      Description = "string",
      EnvironmentName = "string",
      DeploymentStatus = "deployed"|"pending"|"failed",
      DateCreated = as.POSIXct(
        "2015-01-01"
      ),
      DateUpdated = as.POSIXct(
        "2015-01-01"
      ),
      OptionSettings = list(
        list(
          ResourceName = "string",
          Namespace = "string",
          OptionName = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$update_configuration_template(
      ApplicationName = "string",
      TemplateName = "string",
      Description = "string",
      OptionSettings = list(
        list(
          ResourceName = "string",
          Namespace = "string",
          OptionName = "string",
          Value = "string"
        )
      ),
      OptionsToRemove = list(
        list(
          ResourceName = "string",
          Namespace = "string",
          OptionName = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # The following operation removes the configured CloudWatch custom health
    # metrics configuration ConfigDocument from a saved configuration template
    # named my-template:
    svc$update_configuration_template(
      ApplicationName = "my-app",
      OptionsToRemove = list(
        list(
          Namespace = "aws:elasticbeanstalk:healthreporting:system",
          OptionName = "ConfigDocument"
        )
      ),
      TemplateName = "my-template"
    )

    ## End(Not run)
