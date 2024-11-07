/*
SegmentedButton<String>(
  segments: [
    ButtonSegment<String>(
      value: 'Option1',
      label: Text('خيار 1'),
      icon: Icon(Icons.home),
    ),
    ButtonSegment<String>(
      value: 'Option2',
      label: Text('خيار 2'),
      icon: Icon(Icons.star),
    ),
    ButtonSegment<String>(
      value: 'Option3',
      label: Text('خيار 3'),
      icon: Icon(Icons.settings),
    ),
  ],
  selected: {'Option1'}, // يمكنك تحديد الخيار الافتراضي
  onSelectionChanged: (newSelection) {
    print('تم اختيار: $newSelection');
  },
);





   body: Center(
          child: Shortcuts(
            shortcuts: <LogicalKeySet, Intent>{
              LogicalKeySet(LogicalKeyboardKey.enter): ButtonActivateIntent(),
            },
            child: Actions(
              actions: <Type, Action<Intent>>{
                ButtonActivateIntent: CallbackAction<ButtonActivateIntent>(
                  onInvoke: (ButtonActivateIntent intent) {
                    print('Button activated!');
                    return null;
                  },
                ),
              },
              child: ElevatedButton(
                onPressed: () {
                  print('Button pressed!');
                },
                child: Text('اضغط على Enter لتفعيل هذا الزر'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() => runApp(ButtonActivateExample());
شرح الكود
Shortcuts: تُستخدم لتحديد الاختصارات مثل الضغط على مفتاح "Enter". تقوم بربط مجموعة مفاتيح (مثل LogicalKeyboardKey.enter) بنية معينة (ButtonActivateIntent).
Actions: تقوم بتحديد الإجراءات التي يتم تنفيذها عند استدعاء النية. في هذا المثال، تم تعريف إجراء لـButtonActivateIntent يتم تنفيذه عندما يتم استدعاء النية.
CallbackAction: يتم استخدامه لتحديد رد فعل عند تفعيل النية، مثل طباعة رسالة في وحدة التحكم.
ملاحظة
استخدام ButtonActivateIntent مفيد عند الرغبة في تحسين إمكانية الوصول للتطبيق عبر تسهيل التحكم فيه باستخدام لوحة المفاتيح، أو إعداد إجراءات مخصصة عند التفاعل مع الأزرار.







 */