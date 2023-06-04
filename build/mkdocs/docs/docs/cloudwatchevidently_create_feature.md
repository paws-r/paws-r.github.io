<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevidently_create_feature</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Evidently feature that you want to launch or test

### Description

Creates an Evidently *feature* that you want to launch or test. You can
define up to five variations of a feature, and use these variations in
your launches and experiments. A feature must be created in a project.
For information about creating a project, see `create_project`.

Don't use this operation to update an existing feature. Instead, use
`update_feature`.

### Usage

    cloudwatchevidently_create_feature(defaultVariation, description,
      entityOverrides, evaluationStrategy, name, project, tags, variations)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevidently_create_feature_:_defaultVariation">defaultVariation</code></td>
<td><p>The name of the variation to use as the default variation. The
default variation is served to users who are not allocated to any
ongoing launches or experiments of this feature.</p>
<p>This variation must also be listed in the <code>variations</code>
structure.</p>
<p>If you omit <code>defaultVariation</code>, the first variation listed
in the <code>variations</code> structure is used as the default
variation.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_create_feature_:_description">description</code></td>
<td><p>An optional description of the feature.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_create_feature_:_entityOverrides">entityOverrides</code></td>
<td><p>Specify users that should always be served a specific variation
of a feature. Each user is specified by a key-value pair . For each key,
specify a user by entering their user ID, account ID, or some other
identifier. For the value, specify the name of the variation that they
are to be served.</p>
<p>This parameter is limited to 2500 overrides or a total of 40KB. The
40KB limit includes an overhead of 6 bytes per override.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_create_feature_:_evaluationStrategy">evaluationStrategy</code></td>
<td><p>Specify <code>ALL_RULES</code> to activate the traffic allocation
specified by any ongoing launches or experiments. Specify
<code>DEFAULT_VARIATION</code> to serve the default variation to all
users instead.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_create_feature_:_name">name</code></td>
<td><p>[required] The name for the new feature.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_create_feature_:_project">project</code></td>
<td><p>[required] The name or ARN of the project that is to contain the
new feature.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_create_feature_:_tags">tags</code></td>
<td><p>Assigns one or more tags (key-value pairs) to the feature.</p>
<p>Tags can help you organize and categorize your resources. You can
also use them to scope user permissions by granting a user permission to
access or change only resources with certain tag values.</p>
<p>Tags don't have any semantic meaning to Amazon Web Services and are
interpreted strictly as strings of characters.</p>
<p>You can associate as many as 50 tags with a feature.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services resources</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_create_feature_:_variations">variations</code></td>
<td><p>[required] An array of structures that contain the configuration
of the feature's different variations.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      feature = list(
        arn = "string",
        createdTime = as.POSIXct(
          "2015-01-01"
        ),
        defaultVariation = "string",
        description = "string",
        entityOverrides = list(
          "string"
        ),
        evaluationRules = list(
          list(
            name = "string",
            type = "string"
          )
        ),
        evaluationStrategy = "ALL_RULES"|"DEFAULT_VARIATION",
        lastUpdatedTime = as.POSIXct(
          "2015-01-01"
        ),
        name = "string",
        project = "string",
        status = "AVAILABLE"|"UPDATING",
        tags = list(
          "string"
        ),
        valueType = "STRING"|"LONG"|"DOUBLE"|"BOOLEAN",
        variations = list(
          list(
            name = "string",
            value = list(
              boolValue = TRUE|FALSE,
              doubleValue = 123.0,
              longValue = 123,
              stringValue = "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$create_feature(
      defaultVariation = "string",
      description = "string",
      entityOverrides = list(
        "string"
      ),
      evaluationStrategy = "ALL_RULES"|"DEFAULT_VARIATION",
      name = "string",
      project = "string",
      tags = list(
        "string"
      ),
      variations = list(
        list(
          name = "string",
          value = list(
            boolValue = TRUE|FALSE,
            doubleValue = 123.0,
            longValue = 123,
            stringValue = "string"
          )
        )
      )
    )
