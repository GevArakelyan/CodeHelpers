### Algin with panel
```
<RelativePanel>
    <Rectangle x:Name="RedRect" 
    Height="100" Width="100" Fill="Red"
    <!-- Below two lines will place red rectangle on it's parent center -->
    RelativePanel.AlignHorizontalCenterWithPanel="True"
    RelativePanel.AlignVerticalCenterWithPanel="True"/>
    
    <Rectangle x:Name="BlueRect"
    Height="100" Width="100" Fill="Blue"/>
</RelativePanel>

<RelativePanel>
    <Rectangle x:Name="BlueRect"" 
    Height="100" Width="100" Fill="Blue"/>
    <Rectangle x:Name="RedRect"
    Height="100" Width="100" Fill="Red"
    
    RelativePanel.Below="BlueRect"
    RelativePanel.AlignHorizontalCenterWith="BlueRect"/>

</RelativePanel>
--------------
<RelativePanel x:Name="mainPanel" Background="{Binding Path=BgColor}">
    <VisualStateManager.VisualStateGroups>
        <VisualStateGroup>
            <VisualState x:Name="NarrowLayout">
                <VisualState.StateTriggers>
                    <AdaptiveTrigger MinWindowWidth="1"/>
                </VisualState.StateTriggers>
                <VisualState.Setters>
                    <Setter Target="ArtistTB.(RelativePanel.RightOf)" Value="NumberTB"/>
                    <Setter Target="DurationTB.(UIElement.Visibility)" Value="Collapsed"/>
                    <Setter Target="ArtistTB.(RelativePanel.Below)" Value="NameTB"/>
                </VisualState.Setters>
            </VisualState>
            <VisualState x:Name="WideLayout">
                <VisualState.StateTriggers>
                    <AdaptiveTrigger MinWindowWidth="900"/>
                </VisualState.StateTriggers>
            </VisualState>
        </VisualStateGroup>


</RelativePanel>




```