#import "Expense.h"

@implementation Expense

+ (Expense *)expenseWithAmount:(NSNumber *)amount category:(NSString *)category description:(NSString *)description
{
    Expense *expense = [[Expense alloc]init];
    expense.amount = amount;
    expense.category = category;
    expense.descriptionOfExpense = description;
    expense.dateOfExpense = [NSDate date];
    expense.idValue = [self nextId];

    return expense;
}

+ (NSInteger)nextId {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];

    NSInteger idValue = [userDefaults integerForKey:@"idValue"];
    [userDefaults setInteger:idValue + 1 forKey:@"idValue"];
    [userDefaults synchronize];

    return idValue;
}

@end