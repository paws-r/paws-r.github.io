<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_update_image_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the properties of a SageMaker image version

### Description

Updates the properties of a SageMaker image version.

### Usage

    sagemaker_update_image_version(ImageName, Alias, Version, AliasesToAdd,
      AliasesToDelete, VendorGuidance, JobType, MLFramework, ProgrammingLang,
      Processor, Horovod, ReleaseNotes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_update_image_version_:_ImageName">ImageName</code></td>
<td><p>[required] The name of the image.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_update_image_version_:_Alias">Alias</code></td>
<td><p>The alias of the image version.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_image_version_:_Version">Version</code></td>
<td><p>The version of the image.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_image_version_:_AliasesToAdd">AliasesToAdd</code></td>
<td><p>A list of aliases to add.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_image_version_:_AliasesToDelete">AliasesToDelete</code></td>
<td><p>A list of aliases to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_image_version_:_VendorGuidance">VendorGuidance</code></td>
<td><p>The availability of the image version specified by the
maintainer.</p>
<ul>
<li><p><code>NOT_PROVIDED</code>: The maintainers did not provide a
status for image version stability.</p></li>
<li><p><code>STABLE</code>: The image version is stable.</p></li>
<li><p><code>TO_BE_ARCHIVED</code>: The image version is set to be
archived. Custom image versions that are set to be archived are
automatically archived after three months.</p></li>
<li><p><code>ARCHIVED</code>: The image version is archived. Archived
image versions are not searchable and are no longer actively
supported.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_image_version_:_JobType">JobType</code></td>
<td><p>Indicates SageMaker job type compatibility.</p>
<ul>
<li><p><code>TRAINING</code>: The image version is compatible with
SageMaker training jobs.</p></li>
<li><p><code>INFERENCE</code>: The image version is compatible with
SageMaker inference jobs.</p></li>
<li><p><code>NOTEBOOK_KERNEL</code>: The image version is compatible
with SageMaker notebook kernels.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_image_version_:_MLFramework">MLFramework</code></td>
<td><p>The machine learning framework vended in the image
version.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_image_version_:_ProgrammingLang">ProgrammingLang</code></td>
<td><p>The supported programming language and its version.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_image_version_:_Processor">Processor</code></td>
<td><p>Indicates CPU or GPU compatibility.</p>
<ul>
<li><p><code>CPU</code>: The image version is compatible with
CPU.</p></li>
<li><p><code>GPU</code>: The image version is compatible with
GPU.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_image_version_:_Horovod">Horovod</code></td>
<td><p>Indicates Horovod compatibility.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_image_version_:_ReleaseNotes">ReleaseNotes</code></td>
<td><p>The maintainer description of the image version.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ImageVersionArn = "string"
    )

### Request syntax

    svc$update_image_version(
      ImageName = "string",
      Alias = "string",
      Version = 123,
      AliasesToAdd = list(
        "string"
      ),
      AliasesToDelete = list(
        "string"
      ),
      VendorGuidance = "NOT_PROVIDED"|"STABLE"|"TO_BE_ARCHIVED"|"ARCHIVED",
      JobType = "TRAINING"|"INFERENCE"|"NOTEBOOK_KERNEL",
      MLFramework = "string",
      ProgrammingLang = "string",
      Processor = "CPU"|"GPU",
      Horovod = TRUE|FALSE,
      ReleaseNotes = "string"
    )
