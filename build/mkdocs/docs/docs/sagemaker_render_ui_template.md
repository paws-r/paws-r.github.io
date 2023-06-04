<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_render_ui_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Renders the UI template so that you can preview the worker's experience

### Description

Renders the UI template so that you can preview the worker's experience.

### Usage

    sagemaker_render_ui_template(UiTemplate, Task, RoleArn, HumanTaskUiArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_render_ui_template_:_UiTemplate">UiTemplate</code></td>
<td><p>A <code>Template</code> object containing the worker UI template
to render.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_render_ui_template_:_Task">Task</code></td>
<td><p>[required] A <code>RenderableTask</code> object containing a
representative task to render.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_render_ui_template_:_RoleArn">RoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that has access to the
S3 objects that are used by the template.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_render_ui_template_:_HumanTaskUiArn">HumanTaskUiArn</code></td>
<td><p>The <code>HumanTaskUiArn</code> of the worker UI that you want to
render. Do not provide a <code>HumanTaskUiArn</code> if you use the
<code>UiTemplate</code> parameter.</p>
<p>See a list of available Human Ui Amazon Resource Names (ARNs) in <a
href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_UiConfig.html">UiConfig</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RenderedContent = "string",
      Errors = list(
        list(
          Code = "string",
          Message = "string"
        )
      )
    )

### Request syntax

    svc$render_ui_template(
      UiTemplate = list(
        Content = "string"
      ),
      Task = list(
        Input = "string"
      ),
      RoleArn = "string",
      HumanTaskUiArn = "string"
    )
