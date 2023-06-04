<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevidently_update_feature</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing feature

### Description

Updates an existing feature.

You can't use this operation to update the tags of an existing feature.
Instead, use `tag_resource`.

### Usage

    cloudwatchevidently_update_feature(addOrUpdateVariations,
      defaultVariation, description, entityOverrides, evaluationStrategy,
      feature, project, removeVariations)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevidently_update_feature_:_addOrUpdateVariations">addOrUpdateVariations</code></td>
<td><p>To update variation configurations for this feature, or add new
ones, specify this structure. In this array, include any variations that
you want to add or update. If the array includes a variation name that
already exists for this feature, it is updated. If it includes a new
variation name, it is added as a new variation.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_update_feature_:_defaultVariation">defaultVariation</code></td>
<td><p>The name of the variation to use as the default variation. The
default variation is served to users who are not allocated to any
ongoing launches or experiments of this feature.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_update_feature_:_description">description</code></td>
<td><p>An optional description of the feature.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_update_feature_:_entityOverrides">entityOverrides</code></td>
<td><p>Specified users that should always be served a specific variation
of a feature. Each user is specified by a key-value pair . For each key,
specify a user by entering their user ID, account ID, or some other
identifier. For the value, specify the name of the variation that they
are to be served.</p>
<p>This parameter is limited to 2500 overrides or a total of 40KB. The
40KB limit includes an overhead of 6 bytes per override.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_update_feature_:_evaluationStrategy">evaluationStrategy</code></td>
<td><p>Specify <code>ALL_RULES</code> to activate the traffic allocation
specified by any ongoing launches or experiments. Specify
<code>DEFAULT_VARIATION</code> to serve the default variation to all
users instead.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_update_feature_:_feature">feature</code></td>
<td><p>[required] The name of the feature to be updated.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_update_feature_:_project">project</code></td>
<td><p>[required] The name or ARN of the project that contains the
feature to be updated.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_update_feature_:_removeVariations">removeVariations</code></td>
<td><p>Removes a variation from the feature. If the variation you
specify doesn't exist, then this makes no change and does not report an
error.</p>
<p>This operation fails if you try to remove a variation that is part of
an ongoing launch or experiment.</p></td>
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

    svc$update_feature(
      addOrUpdateVariations = list(
        list(
          name = "string",
          value = list(
            boolValue = TRUE|FALSE,
            doubleValue = 123.0,
            longValue = 123,
            stringValue = "string"
          )
        )
      ),
      defaultVariation = "string",
      description = "string",
      entityOverrides = list(
        "string"
      ),
      evaluationStrategy = "ALL_RULES"|"DEFAULT_VARIATION",
      feature = "string",
      project = "string",
      removeVariations = list(
        "string"
      )
    )
