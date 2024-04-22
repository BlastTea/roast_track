part of 'widgets.dart';

/// Enumeration for identifying the slots in the `CompactListTile`.
///
/// This enum helps in managing the layout of the title and trailing widgets in `CompactListTile`.
enum _CompactListTileSlot {
  title,
  trailing,
}

enum OverflowAlignment {
  start,
  end,
  alignedWithTitle,
}

/// A compact version of the ListTile widget.
///
/// This widget is designed to create a list tile with a more compact layout.
/// It allows customization for title, trailing widgets, and their styles.
class CompactListTile extends StatelessWidget {
  CompactListTile({
    super.key,
    this.title,
    this.trailing,
    this.titleTextStyle,
    this.trailingTextStyle,
    this.minTitleWidth = 0.0,
    this.minTrailingWidth = 0.0,
    this.minHorizontalPadding = 8.0,
    this.trailingOverflowAlignment = OverflowAlignment.end,
    this.contentPadding = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
  }) : assert(contentPadding.isNonNegative);

  final Widget? title;
  final Widget? trailing;
  final TextStyle? titleTextStyle;
  final TextStyle? trailingTextStyle;
  final double minTitleWidth;
  final double minTrailingWidth;
  final double minHorizontalPadding;
  final OverflowAlignment trailingOverflowAlignment;
  final EdgeInsetsGeometry contentPadding;

  @override
  Widget build(BuildContext context) => _CompactListTile(
        title: title,
        trailing: trailing,
        titleTextStyle: titleTextStyle ?? Theme.of(context).textTheme.bodyLarge!,
        trailingTextStyle: trailingTextStyle ?? Theme.of(context).textTheme.bodyLarge!,
        minTitleWidth: minTitleWidth,
        minTrailingWidth: minTrailingWidth,
        minHorizontalPadding: minHorizontalPadding,
        trailingOverflowAlignment: trailingOverflowAlignment,
        contentPadding: contentPadding.resolve(Directionality.maybeOf(context)),
      );
}

/// The render object widget for `CompactListTile`.
///
/// This widget is responsible for creating the render object that lays out and paints the `CompactListTile`.
class _CompactListTile extends SlottedMultiChildRenderObjectWidget<_CompactListTileSlot, RenderBox> {
  const _CompactListTile({
    required this.title,
    required this.trailing,
    required this.titleTextStyle,
    required this.trailingTextStyle,
    required this.minTitleWidth,
    required this.minTrailingWidth,
    required this.minHorizontalPadding,
    required this.trailingOverflowAlignment,
    required this.contentPadding,
  });

  final Widget? title;
  final Widget? trailing;
  final TextStyle titleTextStyle;
  final TextStyle trailingTextStyle;
  final double minTitleWidth;
  final double minTrailingWidth;
  final double minHorizontalPadding;
  final OverflowAlignment trailingOverflowAlignment;
  final EdgeInsets contentPadding;

  @override
  SlottedContainerRenderObjectMixin<_CompactListTileSlot, RenderBox> createRenderObject(BuildContext context) => RenderCompactListTile(
        minTitleWidth: minTitleWidth,
        minTrailingWidth: minTrailingWidth,
        minHorizontalPadding: minHorizontalPadding,
        trailingOverflowAlignment: trailingOverflowAlignment,
        contentPadding: contentPadding,
      );

  @override
  void updateRenderObject(BuildContext context, RenderCompactListTile renderObject) => renderObject
    ..minTitleWidth = minTitleWidth
    ..minTrailingWidth = minTrailingWidth
    ..minHorizontalPadding = minHorizontalPadding
    ..trailingOverflowAlignment = trailingOverflowAlignment
    ..contentPadding = contentPadding;

  @override
  Widget? childForSlot(_CompactListTileSlot slot) {
    switch (slot) {
      case _CompactListTileSlot.title:
        if (title == null) {
          return null;
        }

        return AnimatedDefaultTextStyle(
          style: titleTextStyle,
          duration: const Duration(milliseconds: 200),
          child: title!,
        );
      case _CompactListTileSlot.trailing:
        if (trailing == null) {
          return null;
        }

        return AnimatedDefaultTextStyle(
          style: trailingTextStyle,
          duration: const Duration(milliseconds: 200),
          child: trailing!,
        );
    }
  }

  @override
  Iterable<_CompactListTileSlot> get slots => _CompactListTileSlot.values;
}

/// The render object for `CompactListTile`.
///
/// This class performs the layout and painting of the `CompactListTile`.
/// It manages the positioning and sizing of the title and trailing widgets.
class RenderCompactListTile extends RenderBox with SlottedContainerRenderObjectMixin<_CompactListTileSlot, RenderBox>, DebugOverflowIndicatorMixin {
  RenderCompactListTile({
    required double minTitleWidth,
    required double minTrailingWidth,
    required double minHorizontalPadding,
    required OverflowAlignment trailingOverflowAlignment,
    required EdgeInsets contentPadding,
  })  : _minTitleWidth = minTitleWidth,
        _minTrailingWidth = minTrailingWidth,
        _minHorizontalPadding = minHorizontalPadding,
        _trailingOverflowAlignment = trailingOverflowAlignment,
        _contentPadding = contentPadding;

  double _minTitleWidth;
  double get minTitleWidth => _minTitleWidth;
  set minTitleWidth(double value) {
    if (_minTitleWidth == value) {
      return;
    }
    _minTitleWidth = value;
    markNeedsLayout();
  }

  double _minTrailingWidth;
  double get minTrailingWidth => _minTrailingWidth;
  set minTrailingWidth(double value) {
    if (_minTrailingWidth == value) {
      return;
    }
    _minTrailingWidth = value;
    markNeedsLayout();
  }

  double _minHorizontalPadding;
  double get minHorizontalPadding => _minHorizontalPadding;
  set minHorizontalPadding(double value) {
    if (_minHorizontalPadding == value) {
      return;
    }
    _minHorizontalPadding = value;
    markNeedsLayout();
  }

  OverflowAlignment _trailingOverflowAlignment;
  OverflowAlignment get trailingOverflowAlignment => _trailingOverflowAlignment;
  set trailingOverflowAlignment(OverflowAlignment value) {
    if (_trailingOverflowAlignment == value) {
      return;
    }
    _trailingOverflowAlignment = value;
    markNeedsLayout();
  }

  EdgeInsets _contentPadding;
  EdgeInsets get contentPadding => _contentPadding;
  set contentPadding(EdgeInsets value) {
    if (_contentPadding == value) {
      return;
    }
    _contentPadding = value;
    markNeedsLayout();
  }

  RenderBox? get _title => childForSlot(_CompactListTileSlot.title);
  RenderBox? get _trailing => childForSlot(_CompactListTileSlot.trailing);

  @override
  Iterable<RenderBox> get children => [
        if (_title != null) _title!,
        if (_trailing != null) _trailing!,
      ];

  bool _fitsOnSingleLine = true;
  double _titleWidth = 0.0;
  double _trailingWidth = 0.0;
  double _titleHeight = 0.0;
  double _trailingHeight = 0.0;
  double _combinedWidth = 0.0;
  double _combinedHeight = 0.0;

  @override
  bool get sizedByParent => false;

  @override
  void performLayout() {
    BoxConstraints constraints = BoxConstraints(maxWidth: this.constraints.maxWidth);
    BoxConstraints contentConstraints = constraints.deflate(contentPadding);

    final BoxConstraints titleConstraints = minTitleWidth > 0.0 ? contentConstraints.copyWith(maxWidth: minTitleWidth) : contentConstraints;

    _title?.layout(titleConstraints, parentUsesSize: true);
    _titleWidth = _title?.size.width ?? 0.0;
    _titleHeight = _title?.size.height ?? 0.0;

    double a = (trailingOverflowAlignment == OverflowAlignment.alignedWithTitle ? _titleWidth + minHorizontalPadding : 0.0);
    final BoxConstraints trailingConstraints = minTrailingWidth > 0.0 ? contentConstraints.copyWith(minWidth: minTrailingWidth, maxWidth: minTrailingWidth) : contentConstraints.copyWith(maxWidth: contentConstraints.maxWidth - a);

    _trailing?.layout(trailingConstraints, parentUsesSize: true);

    _trailingWidth = _trailing?.size.width ?? 0.0;
    _trailingHeight = _trailing?.size.height ?? 0.0;

    _combinedWidth = _titleWidth + _trailingWidth + contentPadding.horizontal + minHorizontalPadding;
    _combinedHeight = _titleHeight + _trailingHeight + contentPadding.vertical;

    _fitsOnSingleLine = _combinedWidth < constraints.maxWidth;
    if (_fitsOnSingleLine) {
      size = Size(constraints.maxWidth, max(_titleHeight, _trailingHeight) + contentPadding.vertical);
    } else {
      size = Size(constraints.maxWidth, _combinedHeight);
    }
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    Offset titleOffset = offset;
    if (minTitleWidth > 0.0) {
      titleOffset += Offset(minTitleWidth - _titleWidth, 0.0);
    }
    titleOffset += Offset(contentPadding.left, contentPadding.top);

    Offset trailingOffset = offset;
    if (minTrailingWidth > 0.0) {
      trailingOffset += Offset(
        0.0 + size.width - minTrailingWidth,
        0.0,
      );
    } else {
      trailingOffset += Offset(
        0.0 + size.width - _trailingWidth,
        0.0,
      );
    }
    if (_fitsOnSingleLine || trailingOverflowAlignment == OverflowAlignment.alignedWithTitle) {
      trailingOffset += Offset(
        0.0 - (trailingOverflowAlignment == OverflowAlignment.alignedWithTitle ? 0.0 : contentPadding.right),
        contentPadding.top,
      );
    } else {
      trailingOffset += Offset(
        0.0 - contentPadding.right,
        _titleHeight + contentPadding.bottom,
      );
    }

    _title?.paint(context, titleOffset);
    _trailing?.paint(context, trailingOffset);
  }
}

/// A column widget that contains multiple `CompactListTile` widgets.
///
/// This widget arranges multiple `CompactListTile` widgets in a column,
/// allowing for consistent styling and spacing between them.
class CompactListTileColumn extends MultiChildRenderObjectWidget {
  const CompactListTileColumn({
    super.key,
    super.children,
    this.childMinTitleWidth,
    this.childMinTrailingWidth,
    this.childContentPadding,
  });

  final double? childMinTitleWidth;
  final double? childMinTrailingWidth;
  final EdgeInsetsGeometry? childContentPadding;

  @override
  RenderObject createRenderObject(BuildContext context) => RenderCompactListTileColumn(
        childMinTitleWidth: childMinTitleWidth,
        childMinTrailingWidth: childMinTrailingWidth,
        childContentPadding: childContentPadding?.resolve(Directionality.maybeOf(context)),
      );

  @override
  void updateRenderObject(BuildContext context, RenderCompactListTileColumn renderObject) => renderObject
    ..childMinTitleWidth = childMinTitleWidth
    ..childMinTrailingWidth = childMinTrailingWidth
    ..childContentPadding = childContentPadding?.resolve(Directionality.maybeOf(context));
}

/// Parent data for children of `CompactListTileColumn`.
///
/// Stores additional layout information for the children of `CompactListTileColumn`.
class CompactListTileColumnParentData extends ContainerBoxParentData<RenderBox> {
  bool fitsOnSingleLine = false;
}

/// The render object for `CompactListTileColumn`.
///
/// This class performs the layout of its children, positioning them in a column.
/// It takes into account the individual properties of each `CompactListTile`.
class RenderCompactListTileColumn extends RenderBox with ContainerRenderObjectMixin<RenderBox, CompactListTileColumnParentData>, RenderBoxContainerDefaultsMixin<RenderBox, CompactListTileColumnParentData>, DebugOverflowIndicatorMixin {
  RenderCompactListTileColumn({
    double? childMinTitleWidth,
    double? childMinTrailingWidth,
    EdgeInsets? childContentPadding,
  })  : _childMinTitleWidth = childMinTitleWidth,
        _childMinTrailingWidth = childMinTrailingWidth,
        _childContentPadding = childContentPadding;

  double? _childMinTitleWidth;
  double? get childMinTitleWidth => _childMinTitleWidth;
  set childMinTitleWidth(double? value) {
    if (_childMinTitleWidth == value) {
      return;
    }
    _childMinTitleWidth = value;
    markNeedsLayout();
  }

  double? _childMinTrailingWidth;
  double? get childMinTrailingWidth => _childMinTrailingWidth;
  set childMinTrailingWidth(double? value) {
    if (_childMinTrailingWidth == value) {
      return;
    }
    _childMinTrailingWidth = value;
    markNeedsLayout();
  }

  EdgeInsets? _childContentPadding;
  EdgeInsets? get childContentPadding => _childContentPadding;
  set childContentPadding(EdgeInsets? value) {
    if (_childContentPadding == value) {
      return;
    }
    _childContentPadding = value;
    markNeedsLayout();
  }

  @override
  void setupParentData(covariant RenderObject child) {
    if (child.parentData is! CompactListTileColumnParentData) {
      child.parentData = CompactListTileColumnParentData();
    }
  }

  @override
  void performLayout() {
    double longestTitleWidth = 0.0;
    double longestTrailingWidth = 0.0;
    RenderBox? child = firstChild;
    if (childMinTitleWidth == -1.0 || childMinTrailingWidth == -1.0) {
      while (child != null) {
        final CompactListTileColumnParentData childParentData = child.parentData as CompactListTileColumnParentData;

        if (child is RenderCompactListTile) {
          BoxConstraints constraints = BoxConstraints(maxWidth: this.constraints.maxWidth);
          BoxConstraints contentConstraints = constraints.deflate(child._contentPadding);
          Size titleSize = child._title?.getDryLayout(contentConstraints) ?? Size.zero;
          Size trailingSize = child._trailing?.getDryLayout(contentConstraints) ?? Size.zero;

          double combinedWidth = titleSize.width + trailingSize.width + child.contentPadding.horizontal;

          childParentData.fitsOnSingleLine = combinedWidth < constraints.maxWidth;

          if (childMinTitleWidth == -1.0) {
            longestTitleWidth = max(longestTitleWidth, titleSize.width);
          }
          if (childMinTrailingWidth == -1.0) {
            longestTrailingWidth = max(longestTrailingWidth, trailingSize.width);
          }
        }

        child = childParentData.nextSibling;
      }
    }

    double currentPosition = 0.0;
    child = firstChild;
    while (child != null) {
      final CompactListTileColumnParentData childParentData = child.parentData as CompactListTileColumnParentData;

      if (child is RenderCompactListTile) {
        if (childMinTitleWidth != null && childParentData.fitsOnSingleLine) {
          child._minTitleWidth = childMinTitleWidth == -1.0 && longestTitleWidth > 0.0
              ? longestTitleWidth
              : childMinTitleWidth == -1.0
                  ? 0.0
                  : childMinTitleWidth!;
        }
        if (childMinTrailingWidth != null && childParentData.fitsOnSingleLine) {
          child._minTrailingWidth = childMinTrailingWidth == -1.0 && longestTrailingWidth > 0.0
              ? longestTrailingWidth
              : childMinTrailingWidth == -1.0
                  ? 0.0
                  : childMinTrailingWidth!;
        }
        if (childContentPadding != null) {
          child._contentPadding = childContentPadding!;
        }
      }

      child.layout(constraints, parentUsesSize: true);

      childParentData.offset = Offset(0, currentPosition);

      currentPosition += child.size.height;

      child = childParentData.nextSibling;
    }

    size = constraints.constrain(Size(constraints.maxWidth, currentPosition));
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    RenderBox? child = firstChild;
    while (child != null) {
      final CompactListTileColumnParentData childParentData = child.parentData as CompactListTileColumnParentData;

      context.paintChild(child, childParentData.offset + offset);

      child = childParentData.nextSibling;
    }
  }
}
