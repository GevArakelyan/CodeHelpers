### How to bind insdie a content template


<ControlTemplate x:Key="MyButtonTemplate", TargetType="Button">
    <Grid Width="{TemplateBinding Width}" Height="{TemplateBinding Height}">
        <!-- Visual states -->
        <ContentPresenter Content="{TemplateBinding Content}"
        ContentTemplate="{TemplateBinding ContentTemplate}"
        ContentTransitions="{TemplateBinding ContentTransitions}"/>
    </Grid>
</ControlTemplate>

### 3 Types of bindings inside a content template
```
The most flexible
- Content="{Binding Path=Content, Mode=OneWay, RelativeSource={RelativeSource Mode=TemplatedParent}}"

Same as above but mode is twoway for the above one.
- Content="{TemplateBinding Content}"

The most performant way to bind to a content template.
- Content="{x:Bind Path=Content, Mode=TwoWay}"

There is no x:Bind inside template
```

### Handling Visual focus

- Control.UseSystemFocusVisuals="True"
Automatically draws a focus rectangle (1px dotted line) around the control.

- Control.IsTemplateFocusTarget="True"
Change the default behavior, instructing the system to a specific
part in your template where the box should draw.

- VisualStateManager.GotToState(FocusedVisualState)
Opt-out of the native focus functionality for a custome experience.
This puts all the burden on the developer.
